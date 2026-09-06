import type { KeyboardEvent, MouseEvent, ReactNode } from 'react';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '@/components/ui/table';

export type TableColumn<T> = {
  key: string;
  label: string;
  render: (row: T) => ReactNode;
};

type DataTableProps<T> = {
  columns: TableColumn<T>[];
  getRowKey?: (row: T, rowIndex: number) => string | number;
  onRowClick?: (row: T, rowIndex: number) => void;
  rows: T[];
};

export function DataTable<T>({ columns, getRowKey, onRowClick, rows }: DataTableProps<T>) {
  function handleRowClick(event: MouseEvent<HTMLTableRowElement>, row: T, rowIndex: number) {
    const target = event.target as HTMLElement;

    if (target.closest('a, button, input, select, textarea')) return;

    onRowClick?.(row, rowIndex);
  }

  function handleRowKeyDown(event: KeyboardEvent<HTMLTableRowElement>, row: T, rowIndex: number) {
    if (event.key === 'Enter' || event.key === ' ') {
      event.preventDefault();
      onRowClick?.(row, rowIndex);
    }
  }

  return (
    <div className="h-[520px] overflow-auto rounded-lg border border-border bg-card">
      <Table>
        <TableHeader className="sticky top-0 z-10 bg-card">
          <TableRow>
            {columns.map(column => (
              <TableHead key={column.key}>{column.label}</TableHead>
            ))}
          </TableRow>
        </TableHeader>
        <TableBody>
          {rows.map((row, rowIndex) => {
            const clickable = Boolean(onRowClick);

            return (
              <TableRow
                className={clickable ? 'cursor-pointer' : undefined}
                key={getRowKey ? getRowKey(row, rowIndex) : rowIndex}
                onClick={onRowClick ? event => handleRowClick(event, row, rowIndex) : undefined}
                onKeyDown={onRowClick ? event => handleRowKeyDown(event, row, rowIndex) : undefined}
                role={clickable ? 'button' : undefined}
                tabIndex={clickable ? 0 : undefined}
              >
                {columns.map(column => (
                  <TableCell key={column.key}>{column.render(row)}</TableCell>
                ))}
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </div>
  );
}
