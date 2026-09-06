import type { ComponentType, ReactNode } from 'react';
import Link from 'next/link';
import { ArrowRight } from 'lucide-react';
import { buttonVariants } from '@/components/ui/button';
import {
  Card,
  CardContent,
  CardFooter,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { cn } from '@/lib/utils';

type ViewSummaryCardProps = {
  title: string;
  description?: string;
  href: string;
  actionLabel: string;
  icon: ComponentType<{ className?: string }>;
  children: ReactNode;
};

export function ViewSummaryCard({
  title,
  description,
  href,
  actionLabel,
  icon: Icon,
  children,
}: ViewSummaryCardProps) {
  return (
    <Card className="justify-between">
      <CardHeader>
        <div className="flex items-center gap-3">
          <span className="flex size-9 items-center justify-center rounded-lg bg-primary/10 text-primary">
            <Icon className="size-4" />
          </span>
          <CardTitle>{title}</CardTitle>
        </div>
      </CardHeader>
      <CardContent className="space-y-3">
        {description ? <p className="text-sm text-muted-foreground">{description}</p> : null}
        <div className="grid gap-2 text-sm">{children}</div>
      </CardContent>
      <CardFooter>
        <Link className={cn(buttonVariants(), 'w-full')} href={href}>
          {actionLabel}
          <ArrowRight data-icon="inline-end" />
        </Link>
      </CardFooter>
    </Card>
  );
}
