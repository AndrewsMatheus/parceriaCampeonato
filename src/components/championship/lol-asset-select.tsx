'use client';

import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { itemOptions } from '@/domain/championship/item-options';
import { summonerSpellOptions } from '@/domain/championship/summoner-spell-options';

type LoLAssetOption = {
  id: string;
  iconUrl: string;
  name: string;
};

type LoLAssetSelectProps = {
  label: string;
  options: LoLAssetOption[];
};

function LoLAssetSelect({ label, options }: LoLAssetSelectProps) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Select>
        <SelectTrigger className="w-full">
          <SelectValue placeholder="Selecione" />
        </SelectTrigger>
        <SelectContent className="lol-asset-select-content">
          {options.map(option => (
            <SelectItem key={option.id} value={option.name}>
              <span className="lol-asset-select-item">
                <img alt="" src={option.iconUrl} />
                {option.name}
              </span>
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </label>
  );
}

export function SummonerSpellSelect({ label }: { label: string }) {
  return <LoLAssetSelect label={label} options={summonerSpellOptions} />;
}

export function ItemSelect({ label }: { label: string }) {
  return <LoLAssetSelect label={label} options={itemOptions} />;
}
