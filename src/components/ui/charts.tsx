'use client';

import {
  Bar,
  BarChart,
  CartesianGrid,
  Cell,
  LabelList,
  Line,
  LineChart as RechartsLineChart,
  Pie,
  PieChart,
  XAxis,
  YAxis,
} from 'recharts';
import {
  ChartContainer,
  ChartTooltip,
  ChartTooltipContent,
  type ChartConfig,
} from '@/components/ui/chart';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';

type LineSeries = {
  name: string;
  values: number[];
};

export type BarItem = {
  label: string;
  value: number;
  matches?: number;
  winrate?: number;
  hint?: string;
};

function shortenLabel(label: string): string {
  return label.length > 16 ? `${label.slice(0, 14)}...` : label;
}

function formatChartLabel(value: unknown): string {
  return formatNumber(typeof value === 'number' || typeof value === 'string' ? value : undefined);
}

export function LineChart({ series }: { series: LineSeries[] }) {
  const config = series.reduce<ChartConfig>((acc, item, index) => {
    acc[`series${index}`] = {
      label: item.name,
      color: ['var(--chart-1)', 'var(--chart-2)', 'var(--chart-3)', 'var(--chart-4)', 'var(--chart-5)'][index % 5],
    };

    return acc;
  }, {});
  const longestSeries = Math.max(...series.map(item => item.values.length), 0);
  const data = Array.from({ length: longestSeries }, (_, index) => ({
    match: index,
    ...series.reduce<Record<string, number | undefined>>((acc, item, seriesIndex) => {
      acc[`series${seriesIndex}`] = item.values[index];

      return acc;
    }, {}),
  }));

  return (
    <ChartContainer className="h-[280px] w-full" config={config}>
      <RechartsLineChart accessibilityLayer data={data} margin={{ left: 12, right: 12, top: 12 }}>
        <CartesianGrid vertical={false} />
        <XAxis
          axisLine={false}
          dataKey="match"
          minTickGap={28}
          tickFormatter={value => (value === 0 ? 'Inicial' : `P${value}`)}
          tickLine={false}
          tickMargin={8}
        />
        <YAxis axisLine={false} tickFormatter={formatNumber} tickLine={false} tickMargin={8} width={52} />
        <ChartTooltip content={<ChartTooltipContent indicator="line" />} cursor={false} />
        {series.map((item, index) => (
          <Line
            dataKey={`series${index}`}
            dot={false}
            key={item.name}
            name={item.name}
            stroke={`var(--color-series${index})`}
            strokeWidth={3}
            type="monotone"
          />
        ))}
      </RechartsLineChart>
    </ChartContainer>
  );
}

export function BarTower({ items }: { items: BarItem[] }) {
  return <VerticalBarChart items={items} label="MMR" scroll={false} />;
}

export function WinLossDonut({ wins, losses, winrate }: { wins: number; losses: number; winrate: number }) {
  const data = [
    { label: 'Vitórias', value: wins, fill: 'var(--color-wins)' },
    { label: 'Derrotas', value: losses, fill: 'var(--color-losses)' },
  ];
  const total = wins + losses;

  return (
    <ChartContainer
      className="mx-auto h-[280px] w-full"
      config={{
        wins: {
          label: 'Vitórias',
          color: 'var(--chart-2)',
        },
        losses: {
          label: 'Derrotas',
          color: 'var(--chart-4)',
        },
      }}
    >
      <PieChart accessibilityLayer>
        <ChartTooltip
          content={
            <ChartTooltipContent
              formatter={(value, _name, item) => (
                <>
                  <span className="text-muted-foreground">{item.payload.label}</span>
                  <span className="font-mono font-medium text-foreground">{formatNumber(Number(value))}</span>
                </>
              )}
              hideLabel
            />
          }
        />
        <Pie data={data} dataKey="value" innerRadius={72} nameKey="label" outerRadius={104} paddingAngle={total ? 2 : 0}>
          {data.map(item => (
            <Cell fill={item.fill} key={item.label} />
          ))}
          <text dominantBaseline="middle" textAnchor="middle" x="50%" y="45%">
            <tspan className="fill-foreground text-3xl font-bold">{formatPercent(winrate)}</tspan>
          </text>
          <text dominantBaseline="middle" textAnchor="middle" x="50%" y="57%">
            <tspan className="fill-muted-foreground text-xs">{wins}W / {losses}L</tspan>
          </text>
        </Pie>
      </PieChart>
    </ChartContainer>
  );
}

export function Bars({ items }: { items: BarItem[] }) {
  return <VerticalBarChart items={items} label="Total" />;
}

function VerticalBarChart({ items, label, scroll = true }: { items: BarItem[]; label: string; scroll?: boolean }) {
  const data = items.map(item => ({
    ...item,
    shortLabel: shortenLabel(item.label),
  }));
  const minWidth = scroll ? Math.max(360, items.length * 62) : undefined;

  if (!items.length) {
    return (
      <div className="rounded-lg border border-dashed border-border p-6 text-sm text-muted-foreground">
        Sem dados para exibir.
      </div>
    );
  }

  return (
    <div className={scroll ? 'chart-scroll' : undefined}>
      <ChartContainer
        className="h-[300px] w-full"
        config={{
          value: {
            label,
            color: 'var(--chart-1)',
          },
        }}
        style={minWidth ? { minWidth } : undefined}
      >
        <BarChart accessibilityLayer data={data} margin={{ bottom: 56, left: 0, right: 12, top: 24 }}>
          <CartesianGrid vertical={false} />
          <XAxis
            axisLine={false}
            dataKey="shortLabel"
            interval={0}
            tickLine={false}
            tickMargin={12}
            angle={-32}
            textAnchor="end"
          />
          <YAxis
            axisLine={false}
            tickFormatter={formatNumber}
            tickLine={false}
            tickMargin={8}
            type="number"
            width={44}
          />
          <ChartTooltip
            content={
              <ChartTooltipContent
                formatter={(value, _name, item) => (
                  <>
                    <span className="text-muted-foreground">{item.payload.label}</span>
                    <span className="font-mono font-medium text-foreground">{formatNumber(Number(value))}</span>
                  </>
                )}
                hideLabel
              />
            }
          />
          <Bar dataKey="value" fill="var(--color-value)" maxBarSize={48} radius={[8, 8, 0, 0]}>
            <LabelList className="fill-foreground" dataKey="value" formatter={formatChartLabel} position="top" />
          </Bar>
        </BarChart>
      </ChartContainer>
    </div>
  );
}
