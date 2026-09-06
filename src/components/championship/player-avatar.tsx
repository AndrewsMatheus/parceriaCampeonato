import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';

type PlayerAvatarProps = {
  name: string;
  src?: string | null;
  size?: 'sm' | 'default' | 'lg';
};

function getInitials(name: string): string {
  const parts = name.trim().split(/\s+/).filter(Boolean);

  if (!parts.length) return '?';
  if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase();

  return `${parts[0][0]}${parts[parts.length - 1][0]}`.toUpperCase();
}

export function PlayerAvatar({ name, src, size = 'default' }: PlayerAvatarProps) {
  return (
    <Avatar size={size}>
      {src ? <AvatarImage alt={name} src={src} /> : null}
      <AvatarFallback>{getInitials(name)}</AvatarFallback>
    </Avatar>
  );
}
