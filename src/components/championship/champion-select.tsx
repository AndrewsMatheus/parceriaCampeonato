'use client';

import { ChampionPortrait } from '@/components/championship/champion-portrait';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { championOptions } from '@/domain/championship/champion-options';

type ChampionSelectProps = {
  label: string;
};

export function ChampionSelect({ label }: ChampionSelectProps) {
  return (
    <label className="form-field">
      <span>{label}</span>
      <Select>
        <SelectTrigger className="w-full">
          <SelectValue placeholder="Selecione" />
        </SelectTrigger>
        <SelectContent className="champion-select-content">
          {championOptions.map(champion => (
            <SelectItem key={champion.id} value={champion.name}>
              <span className="champion-select-item">
                <ChampionPortrait champion={champion.name} iconUrl={champion.iconUrl} size="sm" />
                {champion.name}
              </span>
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </label>
  );
}
