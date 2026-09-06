'use client';

import { useState } from 'react';
import type { FormEvent } from 'react';
import { LogIn, LogOut, ShieldCheck } from 'lucide-react';
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
import { useAdminAuth } from '@/lib/auth/use-admin-auth';

export function AdminAuthControl() {
  const { error, isLoading, signIn, signOut, userEmail } = useAdminAuth();
  const [dialogOpen, setDialogOpen] = useState(false);
  const [login, setLogin] = useState('');
  const [password, setPassword] = useState('');

  async function handleSubmit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    const signedIn = await signIn(login, password);

    if (signedIn) {
      setDialogOpen(false);
      setPassword('');
    }
  }

  if (userEmail) {
    return (
      <div className="admin-auth">
        <span className="is-admin">
          <ShieldCheck aria-hidden="true" />
          <span className="sr-only">Admin</span>
        </span>
        <Button onClick={signOut} size="sm" type="button" variant="outline">
          <LogOut data-icon="inline-start" />
          Sair
        </Button>
      </div>
    );
  }

  return (
    <div className="admin-auth">
      <Button disabled={isLoading} onClick={() => setDialogOpen(true)} size="sm" type="button" variant="outline">
        <LogIn data-icon="inline-start" />
        Entrar
      </Button>

      <Dialog onOpenChange={setDialogOpen} open={dialogOpen}>
        <DialogContent className="max-w-sm">
          <DialogHeader>
            <DialogTitle>Login administrativo</DialogTitle>
            <DialogDescription>Entre com uma conta autorizada para liberar os botões de criação.</DialogDescription>
          </DialogHeader>
          <form className="match-form" onSubmit={handleSubmit}>
            <label className="form-field">
              <span>Usuário</span>
              <Input autoComplete="username" onChange={event => setLogin(event.target.value)} type="text" value={login} />
            </label>
            <label className="form-field">
              <span>Senha</span>
              <Input autoComplete="current-password" onChange={event => setPassword(event.target.value)} type="password" value={password} />
            </label>
            {error ? <p className="form-error">{error}</p> : null}
            <DialogFooter>
              <Button disabled={isLoading || !login || !password} type="submit">
                Entrar
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>
    </div>
  );
}
