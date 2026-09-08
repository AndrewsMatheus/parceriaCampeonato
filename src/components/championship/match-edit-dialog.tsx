'use client';

import { useMemo, useState, type FormEvent } from 'react';
import { useRouter } from 'next/navigation';
import { Edit3, Loader2, Search } from 'lucide-react';
import { ChampionPortrait } from '@/components/championship/champion-portrait';
import { Button } from '@/components/ui/button';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import { Input } from '@/components/ui/input';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { championOptions } from '@/domain/championship/champion-options';
import { itemOptions } from '@/domain/championship/item-options';
import { summonerSpellOptions } from '@/domain/championship/summoner-spell-options';
import type { Championship, MatchSide, PlayerMatchEntry, Role } from '@/domain/championship/types';
import { useAdminAuth } from '@/lib/auth/use-admin-auth';
import { createSupabaseBrowserClient } from '@/lib/supabase/client';

type MatchEditDialogProps = {
  championship: Championship;
  match: Championship['matches'][number];
};

type PlayerFormState = {
  assists: string;
  championIconUrl: string;
  championName: string;
  creepScore: string;
  damageDealtChampions: string;
  damageTaken: string;
  deaths: string;
  goldEarned: string;
  items: string[];
  killParticipation: string;
  kills: string;
  level: string;
  lpDelta: string;
  playerName: string;
  rankLabel: string;
  role: Role;
  runes: string[];
  side: MatchSide;
  summonerSpells: string[];
  turretDamage: string;
  visionScore: string;
  wardsKilled: string;
  wardsPlaced: string;
};

type MatchFormState = {
  blueBans: string;
  blueBarons: string;
  blueDragons: string;
  blueHeralds: string;
  blueInhibitors: string;
  blueKills: string;
  blueTowers: string;
  durationSeconds: string;
  gameId: string;
  mapName: string;
  playedAt: string;
  players: PlayerFormState[];
  queueType: string;
  redBans: string;
  redBarons: string;
  redDragons: string;
  redHeralds: string;
  redInhibitors: string;
  redKills: string;
  redTowers: string;
  winnerSide: MatchSide;
};

const emptyValue = '__empty__';
const roles: Role[] = ['TOP', 'JNG', 'MID', 'ADC', 'SUP', 'UNK'];
const trinketIds = new Set(['3340', '3363', '3364']);
const trinketOptions = itemOptions.filter(item => trinketIds.has(item.id));

type SearchableOption = {
  iconUrl: string;
  id: string;
  name: string;
};

function toInputValue(value?: number | string | null) {
  return value === undefined || value === null ? '' : String(value);
}

function toDateTimeLocal(value?: string) {
  if (!value) return '';

  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return '';

  return new Date(date.getTime() - date.getTimezoneOffset() * 60000).toISOString().slice(0, 16);
}

function toArrayInput(values?: string[]) {
  return values?.filter(Boolean).join(', ') ?? '';
}

function parseArrayInput(value: string) {
  return value.split(',').map(item => item.trim()).filter(Boolean);
}

function normalizeNumberInput(value: string) {
  const trimmed = value.trim();
  if (!trimmed) return null;

  const withoutSpaces = trimmed.replace(/[%\s]/g, '');
  const normalized = withoutSpaces
    .replace(/\.(?=\d{3}(\D|$))/g, '')
    .replace(',', '.');
  const parsed = Number(normalized);

  return Number.isFinite(parsed) ? parsed : null;
}

function normalizeIntegerInput(value: string) {
  const parsed = normalizeNumberInput(value);

  return parsed === null ? null : Math.trunc(parsed);
}

function findChampionIconUrl(championName: string) {
  return championOptions.find(champion => champion.name === championName)?.iconUrl ?? '';
}

function normalizeSearch(value: string) {
  return value.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();
}

function filterSearchableOptions(options: SearchableOption[], query: string) {
  const normalizedQuery = normalizeSearch(query);

  if (!normalizedQuery) return options.slice(0, 80);

  return options.filter(option => normalizeSearch(`${option.name} ${option.id}`).includes(normalizedQuery)).slice(0, 80);
}

function findAssetOption(options: SearchableOption[], value: string) {
  return options.find(option => option.iconUrl === value || option.id === value || option.name === value);
}

function createPlayerState(player: PlayerMatchEntry, side: MatchSide): PlayerFormState {
  return {
    assists: toInputValue(player.assists),
    championIconUrl: player.championIconUrl ?? findChampionIconUrl(player.champion ?? ''),
    championName: player.champion ?? '',
    creepScore: toInputValue(player.creepScore),
    damageDealtChampions: toInputValue(player.damageDealtChampions),
    damageTaken: toInputValue(player.damageTaken),
    deaths: toInputValue(player.deaths),
    goldEarned: toInputValue(player.goldEarned),
    items: [...(player.items ?? []), '', '', '', '', '', '', ''].slice(0, 7),
    killParticipation: toInputValue(player.killParticipation),
    kills: toInputValue(player.kills),
    level: toInputValue(player.level),
    lpDelta: toInputValue(player.lp),
    playerName: player.name,
    rankLabel: player.rankLabel ?? '',
    role: player.role,
    runes: player.runes ?? [],
    side,
    summonerSpells: [...(player.summonerSpells ?? []), '', ''].slice(0, 2),
    turretDamage: toInputValue(player.turretDamage),
    visionScore: toInputValue(player.visionScore),
    wardsKilled: toInputValue(player.wardsKilled),
    wardsPlaced: toInputValue(player.wardsPlaced),
  };
}

function createInitialState(match: Championship['matches'][number]): MatchFormState {
  return {
    blueBans: toArrayInput(match.raw.blueBans),
    blueBarons: toInputValue(match.raw.blueBarons),
    blueDragons: toInputValue(match.raw.blueDragons),
    blueHeralds: toInputValue(match.raw.blueHeralds),
    blueInhibitors: toInputValue(match.raw.blueInhibitors),
    blueKills: toInputValue(match.raw.blueKills),
    blueTowers: toInputValue(match.raw.blueTowers),
    durationSeconds: toInputValue(match.raw.durationSeconds),
    gameId: match.raw.gameId ?? '',
    mapName: match.raw.mapName ?? 'Summoner\'s Rift',
    playedAt: toDateTimeLocal(match.raw.playedAt),
    players: [
      ...match.blue.map(player => createPlayerState(player, 'blue')),
      ...match.red.map(player => createPlayerState(player, 'red')),
    ],
    queueType: match.raw.queueType ?? 'Personalizada',
    redBans: toArrayInput(match.raw.redBans),
    redBarons: toInputValue(match.raw.redBarons),
    redDragons: toInputValue(match.raw.redDragons),
    redHeralds: toInputValue(match.raw.redHeralds),
    redInhibitors: toInputValue(match.raw.redInhibitors),
    redKills: toInputValue(match.raw.redKills),
    redTowers: toInputValue(match.raw.redTowers),
    winnerSide: match.winner,
  };
}

function createPlayerPayload(player: PlayerFormState) {
  return {
    ...player,
    assists: normalizeIntegerInput(player.assists),
    creepScore: normalizeIntegerInput(player.creepScore),
    damageDealtChampions: normalizeIntegerInput(player.damageDealtChampions),
    damageTaken: normalizeIntegerInput(player.damageTaken),
    deaths: normalizeIntegerInput(player.deaths),
    goldEarned: normalizeIntegerInput(player.goldEarned),
    items: player.items.filter(Boolean),
    killParticipation: normalizeNumberInput(player.killParticipation),
    kills: normalizeIntegerInput(player.kills),
    level: normalizeIntegerInput(player.level),
    lpDelta: normalizeIntegerInput(player.lpDelta),
    runes: player.runes.filter(Boolean),
    summonerSpells: player.summonerSpells.filter(Boolean),
    turretDamage: normalizeIntegerInput(player.turretDamage),
    visionScore: normalizeIntegerInput(player.visionScore),
    wardsKilled: normalizeIntegerInput(player.wardsKilled),
    wardsPlaced: normalizeIntegerInput(player.wardsPlaced),
  };
}

function createMatchPayload(form: MatchFormState) {
  return {
    ...form,
    blueBans: parseArrayInput(form.blueBans),
    blueBarons: normalizeIntegerInput(form.blueBarons),
    blueDragons: normalizeIntegerInput(form.blueDragons),
    blueHeralds: normalizeIntegerInput(form.blueHeralds),
    blueInhibitors: normalizeIntegerInput(form.blueInhibitors),
    blueKills: normalizeIntegerInput(form.blueKills),
    blueTowers: normalizeIntegerInput(form.blueTowers),
    durationSeconds: normalizeIntegerInput(form.durationSeconds),
    players: form.players.map(createPlayerPayload),
    redBans: parseArrayInput(form.redBans),
    redBarons: normalizeIntegerInput(form.redBarons),
    redDragons: normalizeIntegerInput(form.redDragons),
    redHeralds: normalizeIntegerInput(form.redHeralds),
    redInhibitors: normalizeIntegerInput(form.redInhibitors),
    redKills: normalizeIntegerInput(form.redKills),
    redTowers: normalizeIntegerInput(form.redTowers),
  };
}

function TextField({
  label,
  onChange,
  type = 'text',
  value,
}: {
  label: string;
  onChange: (value: string) => void;
  type?: string;
  value: string;
}) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Input onChange={event => onChange(event.target.value)} type={type} value={value} />
    </label>
  );
}

function SimpleSelect({
  label,
  onChange,
  options,
  value,
}: {
  label: string;
  onChange: (value: string) => void;
  options: Array<{ label: string; value: string }>;
  value: string;
}) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Select onValueChange={selected => selected && onChange(selected)} value={value}>
        <SelectTrigger className="w-full">
          <SelectValue placeholder="Selecione" />
        </SelectTrigger>
        <SelectContent>
          {options.map(option => (
            <SelectItem key={option.value} value={option.value}>
              {option.label}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </label>
  );
}

function SearchablePicker({
  emptyLabel = 'Vazio',
  getOptionValue = option => option.iconUrl,
  label,
  onChange,
  options,
  placeholder = 'Pesquisar',
  selectedOption,
  value,
}: {
  emptyLabel?: string;
  getOptionValue?: (option: SearchableOption) => string;
  label: string;
  onChange: (value: string) => void;
  options: SearchableOption[];
  placeholder?: string;
  selectedOption?: SearchableOption;
  value: string;
}) {
  const [open, setOpen] = useState(false);
  const [query, setQuery] = useState('');
  const visibleOptions = filterSearchableOptions(options, query);

  function selectValue(nextValue: string) {
    onChange(nextValue);
    setOpen(false);
    setQuery('');
  }

  return (
    <div className="form-field searchable-field">
      <span>{label}</span>
      <button className="searchable-trigger" onClick={() => setOpen(current => !current)} type="button">
        {selectedOption ? (
          <span className="searchable-value">
            <img alt="" src={selectedOption.iconUrl} />
            <span>{selectedOption.name}</span>
          </span>
        ) : (
          <span className="searchable-placeholder">{emptyLabel}</span>
        )}
      </button>

      {open ? (
        <div className="searchable-popover">
          <div className="searchable-input">
            <Search aria-hidden="true" />
            <Input
              autoFocus
              onChange={event => setQuery(event.target.value)}
              placeholder={placeholder}
              value={query}
            />
          </div>
          <div className="searchable-list">
            <button
              className={`searchable-option ${value ? '' : 'is-selected'}`}
              onClick={() => selectValue('')}
              type="button"
            >
              <span className="searchable-option-empty">{emptyLabel}</span>
            </button>
            {visibleOptions.map(option => (
              <button
                className={`searchable-option ${getOptionValue(option) === value ? 'is-selected' : ''}`}
                key={option.id}
                onClick={() => selectValue(getOptionValue(option))}
                type="button"
              >
                <img alt="" src={option.iconUrl} />
                <span>{option.name}</span>
              </button>
            ))}
          </div>
        </div>
      ) : null}
    </div>
  );
}

function ChampionField({ onChange, value }: { onChange: (value: string) => void; value: string }) {
  const selectedChampion = championOptions.find(champion => champion.name === value);

  return (
    <SearchablePicker
      emptyLabel="Campeão pendente"
      getOptionValue={champion => champion.name}
      label="Campeão"
      onChange={onChange}
      options={championOptions}
      placeholder="Pesquisar campeão"
      selectedOption={selectedChampion}
      value={value}
    />
  );
}

function AssetField({
  label,
  onChange,
  options,
  value,
}: {
  label: string;
  onChange: (value: string) => void;
  options: SearchableOption[];
  value: string;
}) {
  const selectedOption = findAssetOption(options, value);

  return (
    <SearchablePicker
      label={label}
      onChange={onChange}
      options={options}
      placeholder={`Pesquisar ${label.toLowerCase()}`}
      selectedOption={selectedOption}
      value={value}
    />
  );
}

function PlayerEditor({
  onChange,
  playerOptions,
  player,
}: {
  onChange: (player: PlayerFormState) => void;
  player: PlayerFormState;
  playerOptions: string[];
}) {
  const update = (patch: Partial<PlayerFormState>) => onChange({ ...player, ...patch });
  const updateItem = (index: number, value: string) => {
    const items = player.items.slice();
    items[index] = value;
    update({ items });
  };
  const updateSpell = (index: number, value: string) => {
    const summonerSpells = player.summonerSpells.slice();
    summonerSpells[index] = value;
    update({ summonerSpells });
  };

  return (
    <section className={`match-editor-player is-${player.side}`}>
      <div className="match-editor-player-head">
        <SimpleSelect
          label="Jogador"
          onChange={playerName => update({ playerName })}
          options={playerOptions.map(name => ({ label: name, value: name }))}
          value={player.playerName}
        />
        <ChampionField
          onChange={championName => update({ championName: championName === emptyValue ? '' : championName, championIconUrl: findChampionIconUrl(championName) })}
          value={player.championName}
        />
        <SimpleSelect
          label="Lado"
          onChange={side => update({ side: side as MatchSide })}
          options={[
            { label: 'Azul', value: 'blue' },
            { label: 'Vermelho', value: 'red' },
          ]}
          value={player.side}
        />
        <SimpleSelect
          label="Função"
          onChange={role => update({ role: role as Role })}
          options={roles.map(role => ({ label: role, value: role }))}
          value={player.role}
        />
        <TextField label="Elo na partida" onChange={rankLabel => update({ rankLabel })} value={player.rankLabel} />
      </div>

      <div className="match-editor-player-stats">
        <TextField label="PDL" onChange={lpDelta => update({ lpDelta })} type="number" value={player.lpDelta} />
        <TextField label="Nível" onChange={level => update({ level })} type="number" value={player.level} />
        <TextField label="K" onChange={kills => update({ kills })} type="number" value={player.kills} />
        <TextField label="D" onChange={deaths => update({ deaths })} type="number" value={player.deaths} />
        <TextField label="A" onChange={assists => update({ assists })} type="number" value={player.assists} />
        <TextField label="Farm" onChange={creepScore => update({ creepScore })} type="number" value={player.creepScore} />
        <TextField label="Ouro" onChange={goldEarned => update({ goldEarned })} type="number" value={player.goldEarned} />
        <TextField label="% abates" onChange={killParticipation => update({ killParticipation })} type="number" value={player.killParticipation} />
        <TextField label="Visão" onChange={visionScore => update({ visionScore })} type="number" value={player.visionScore} />
        <TextField label="Dano" onChange={damageDealtChampions => update({ damageDealtChampions })} type="number" value={player.damageDealtChampions} />
        <TextField label="Dano sofrido" onChange={damageTaken => update({ damageTaken })} type="number" value={player.damageTaken} />
        <TextField label="Dano torre" onChange={turretDamage => update({ turretDamage })} type="number" value={player.turretDamage} />
        <TextField label="Wards" onChange={wardsPlaced => update({ wardsPlaced })} type="number" value={player.wardsPlaced} />
        <TextField label="Wards limpas" onChange={wardsKilled => update({ wardsKilled })} type="number" value={player.wardsKilled} />
      </div>

      <div className="match-editor-assets">
        <AssetField label="Feitiço 1" onChange={value => updateSpell(0, value)} options={summonerSpellOptions} value={player.summonerSpells[0] ?? ''} />
        <AssetField label="Feitiço 2" onChange={value => updateSpell(1, value)} options={summonerSpellOptions} value={player.summonerSpells[1] ?? ''} />
      </div>

      <div className="match-editor-items">
        {player.items.map((item, index) => (
          <AssetField
            key={`item-${index}`}
            label={index === 6 ? 'Trinket' : `Item ${index + 1}`}
            onChange={value => updateItem(index, value)}
            options={index === 6 ? trinketOptions : itemOptions}
            value={item}
          />
        ))}
      </div>
    </section>
  );
}

export function MatchEditDialog({ championship, match }: MatchEditDialogProps) {
  const router = useRouter();
  const supabase = useMemo(() => createSupabaseBrowserClient(), []);
  const { isAdmin, isLoading } = useAdminAuth();
  const playerOptions = useMemo(() => Object.keys(championship.players).sort((a, b) => a.localeCompare(b)), [championship.players]);
  const [open, setOpen] = useState(false);
  const [form, setForm] = useState<MatchFormState>(() => createInitialState(match));
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  if (isLoading || !isAdmin) return null;

  const update = (patch: Partial<MatchFormState>) => setForm(current => ({ ...current, ...patch }));
  const updatePlayer = (index: number, player: PlayerFormState) => {
    setForm(current => {
      const players = current.players.slice();
      players[index] = player;

      return { ...current, players };
    });
  };

  async function handleSubmit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setError(null);
    setSaving(true);

    const payload = createMatchPayload(form);
    const { error: updateError } = await supabase.rpc('update_match_details', {
      championship_slug: 'parceria-vive-2026-2',
      payload,
      target_match_number: match.id,
    });

    setSaving(false);

    if (updateError) {
      setError(updateError.message);
      return;
    }

    setOpen(false);
    router.refresh();
  }

  return (
    <div className="match-detail-actions">
      <Button onClick={() => setOpen(true)} type="button" variant="outline">
        <Edit3 data-icon="inline-start" />
        Editar partida
      </Button>

      <Dialog onOpenChange={setOpen} open={open}>
        <DialogContent className="match-edit-dialog">
          <DialogHeader>
            <DialogTitle>Editar partida {match.id}</DialogTitle>
            <DialogDescription>Atualize placar, objetivos, jogadores, campeões, feitiços e itens.</DialogDescription>
          </DialogHeader>

          <form className="match-edit-form" onSubmit={handleSubmit}>
            <div className="match-form-scroll">
              <section className="match-form-box">
                <h3>Dados da partida</h3>
                <div className="form-grid three">
                  <SimpleSelect
                    label="Vencedor"
                    onChange={winnerSide => update({ winnerSide: winnerSide as MatchSide })}
                    options={[
                      { label: 'Azul', value: 'blue' },
                      { label: 'Vermelho', value: 'red' },
                    ]}
                    value={form.winnerSide}
                  />
                  <TextField label="Fila" onChange={queueType => update({ queueType })} value={form.queueType} />
                  <TextField label="Mapa" onChange={mapName => update({ mapName })} value={form.mapName} />
                  <TextField label="Duração em segundos" onChange={durationSeconds => update({ durationSeconds })} type="number" value={form.durationSeconds} />
                  <TextField label="Data e hora" onChange={playedAt => update({ playedAt })} type="datetime-local" value={form.playedAt} />
                  <TextField label="ID da partida" onChange={gameId => update({ gameId })} value={form.gameId} />
                </div>
              </section>

              <div className="match-form-teams">
                <section className="match-form-box">
                  <h3>Equipe azul</h3>
                  <div className="form-grid three">
                    <TextField label="Abates" onChange={blueKills => update({ blueKills })} type="number" value={form.blueKills} />
                    <TextField label="Torres" onChange={blueTowers => update({ blueTowers })} type="number" value={form.blueTowers} />
                    <TextField label="Dragões" onChange={blueDragons => update({ blueDragons })} type="number" value={form.blueDragons} />
                    <TextField label="Barões" onChange={blueBarons => update({ blueBarons })} type="number" value={form.blueBarons} />
                    <TextField label="Arautos" onChange={blueHeralds => update({ blueHeralds })} type="number" value={form.blueHeralds} />
                    <TextField label="Inibidores" onChange={blueInhibitors => update({ blueInhibitors })} type="number" value={form.blueInhibitors} />
                  </div>
                  <TextField label="Banimentos separados por vírgula" onChange={blueBans => update({ blueBans })} value={form.blueBans} />
                </section>

                <section className="match-form-box">
                  <h3>Equipe vermelha</h3>
                  <div className="form-grid three">
                    <TextField label="Abates" onChange={redKills => update({ redKills })} type="number" value={form.redKills} />
                    <TextField label="Torres" onChange={redTowers => update({ redTowers })} type="number" value={form.redTowers} />
                    <TextField label="Dragões" onChange={redDragons => update({ redDragons })} type="number" value={form.redDragons} />
                    <TextField label="Barões" onChange={redBarons => update({ redBarons })} type="number" value={form.redBarons} />
                    <TextField label="Arautos" onChange={redHeralds => update({ redHeralds })} type="number" value={form.redHeralds} />
                    <TextField label="Inibidores" onChange={redInhibitors => update({ redInhibitors })} type="number" value={form.redInhibitors} />
                  </div>
                  <TextField label="Banimentos separados por vírgula" onChange={redBans => update({ redBans })} value={form.redBans} />
                </section>
              </div>

              <div className="match-editor-players">
                {form.players.map((player, index) => (
                  <PlayerEditor
                    key={`${player.side}-${player.role}-${player.playerName}-${index}`}
                    onChange={nextPlayer => updatePlayer(index, nextPlayer)}
                    player={player}
                    playerOptions={playerOptions}
                  />
                ))}
              </div>
            </div>

            {error ? <p className="form-error">{error}</p> : null}
            <DialogFooter>
              <Button disabled={saving} type="submit">
                {saving ? <Loader2 className="animate-spin" data-icon="inline-start" /> : null}
                Salvar partida
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>
    </div>
  );
}
