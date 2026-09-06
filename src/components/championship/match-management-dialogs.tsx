'use client';

import { useState } from 'react';
import { Plus, UserPlus } from 'lucide-react';
import { ChampionSelect } from '@/components/championship/champion-select';
import { ItemSelect, SummonerSpellSelect } from '@/components/championship/lol-asset-select';
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
import { useAdminAuth } from '@/lib/auth/use-admin-auth';

const roles = ['TOP', 'JNG', 'MID', 'ADC', 'SUP'] as const;

function FormField({ label, type = 'text' }: { label: string; type?: string }) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Input type={type} />
    </label>
  );
}

function RoleSelect({ label }: { label: string }) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Select>
        <SelectTrigger className="w-full">
          <SelectValue placeholder="Selecione" />
        </SelectTrigger>
        <SelectContent>
          {roles.map(role => (
            <SelectItem key={role} value={role}>
              {role}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </label>
  );
}

function TeamPlayerFields({ side, slot }: { side: string; slot: number }) {
  return (
    <div className="match-form-player-card">
      <h4>{side} {slot}</h4>
      <div className="match-form-player-main">
        <FormField label="Jogador" />
        <ChampionSelect label="Campeão" />
        <RoleSelect label="Função" />
        <FormField label="MMR/LP" type="number" />
      </div>
      <div className="match-form-player-stats">
        <FormField label="K" type="number" />
        <FormField label="D" type="number" />
        <FormField label="A" type="number" />
        <FormField label="Farm" type="number" />
        <FormField label="Ouro" type="number" />
        <FormField label="Visão" type="number" />
        <FormField label="Part. abates %" type="number" />
      </div>
      <div className="match-form-player-extra">
        <SummonerSpellSelect label="Feitiço D" />
        <SummonerSpellSelect label="Feitiço F" />
      </div>
      <div className="match-form-player-items">
        {Array.from({ length: 6 }, (_, index) => (
          <ItemSelect key={`item-${index}`} label={`Item ${index + 1}`} />
        ))}
        <ItemSelect label="Trinket" />
      </div>
    </div>
  );
}

export function MatchManagementDialogs() {
  const { isAdmin, isLoading } = useAdminAuth();
  const [matchFormOpen, setMatchFormOpen] = useState(false);
  const [playerFormOpen, setPlayerFormOpen] = useState(false);

  if (isLoading || !isAdmin) return null;

  return (
    <div className="match-actions">
      <Button onClick={() => setMatchFormOpen(true)} type="button">
        <Plus data-icon="inline-start" />
        Adicionar partida
      </Button>
      <Button onClick={() => setPlayerFormOpen(true)} type="button" variant="outline">
        <UserPlus data-icon="inline-start" />
        Adicionar jogador
      </Button>

      <Dialog onOpenChange={setMatchFormOpen} open={matchFormOpen}>
        <DialogContent className="match-create-dialog">
          <DialogHeader>
            <DialogTitle>Adicionar partida</DialogTitle>
            <DialogDescription>Preencha o resumo da partida e os dados de cada jogador.</DialogDescription>
          </DialogHeader>
          <form className="match-form" onSubmit={event => event.preventDefault()}>
            <div className="match-form-scroll">
              <section className="match-form-box">
                <h3>Dados da partida</h3>
                <div className="form-grid three">
                  <FormField label="Data" type="date" />
                  <FormField label="Duração em segundos" type="number" />
                  <FormField label="ID da partida" />
                  <FormField label="Fila" />
                  <FormField label="Mapa" />
                  <label className="form-field">
                    <span>Vencedor</span>
                    <Select>
                      <SelectTrigger className="w-full">
                        <SelectValue placeholder="Selecione" />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="blue">Equipe Azul</SelectItem>
                        <SelectItem value="red">Equipe Vermelha</SelectItem>
                      </SelectContent>
                    </Select>
                  </label>
                </div>
              </section>

              <div className="match-form-teams">
                <section className="match-form-box">
                  <h3>Resumo azul</h3>
                  <div className="form-grid three">
                    <FormField label="Abates" type="number" />
                    <FormField label="Torres" type="number" />
                    <FormField label="Dragões" type="number" />
                    <FormField label="Barões" type="number" />
                    <FormField label="Arautos" type="number" />
                    <FormField label="Inibidores" type="number" />
                  </div>
                  <FormField label="Banimentos" />
                </section>
                <section className="match-form-box">
                  <h3>Resumo vermelho</h3>
                  <div className="form-grid three">
                    <FormField label="Abates" type="number" />
                    <FormField label="Torres" type="number" />
                    <FormField label="Dragões" type="number" />
                    <FormField label="Barões" type="number" />
                    <FormField label="Arautos" type="number" />
                    <FormField label="Inibidores" type="number" />
                  </div>
                  <FormField label="Banimentos" />
                </section>
              </div>

              <div className="match-form-teams">
                <section className="match-form-section">
                  <h3>Equipe Azul</h3>
                  {Array.from({ length: 5 }, (_, index) => (
                    <TeamPlayerFields key={`blue-${index}`} side="Azul" slot={index + 1} />
                  ))}
                </section>

                <section className="match-form-section">
                  <h3>Equipe Vermelha</h3>
                  {Array.from({ length: 5 }, (_, index) => (
                    <TeamPlayerFields key={`red-${index}`} side="Vermelho" slot={index + 1} />
                  ))}
                </section>
              </div>
            </div>

            <DialogFooter>
              <Button disabled type="submit">
                Salvar no banco
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>

      <Dialog onOpenChange={setPlayerFormOpen} open={playerFormOpen}>
        <DialogContent className="player-create-dialog">
          <DialogHeader>
            <DialogTitle>Adicionar jogador</DialogTitle>
            <DialogDescription>Cadastre as informações iniciais do jogador.</DialogDescription>
          </DialogHeader>
          <form className="match-form" onSubmit={event => event.preventDefault()}>
            <div className="form-grid two">
              <FormField label="Nome" />
              <FormField label="MMR inicial" type="number" />
              <FormField label="Foto do jogador" />
              <RoleSelect label="Role principal" />
            </div>
            <DialogFooter>
              <Button disabled type="submit">
                Salvar no banco
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>
    </div>
  );
}
