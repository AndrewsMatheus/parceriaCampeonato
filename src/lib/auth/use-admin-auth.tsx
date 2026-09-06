'use client';

import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
  type ReactNode,
} from 'react';
import type { Session } from '@supabase/supabase-js';
import { createSupabaseBrowserClient } from '@/lib/supabase/client';

type AdminAuthState = {
  error: string | null;
  isAdmin: boolean;
  isLoading: boolean;
  userEmail: string | null;
};

type AdminAuthContextValue = AdminAuthState & {
  signIn: (login: string, password: string) => Promise<boolean>;
  signOut: () => Promise<void>;
};

const initialState: AdminAuthState = {
  error: null,
  isAdmin: false,
  isLoading: true,
  userEmail: null,
};

const AdminAuthContext = createContext<AdminAuthContextValue | null>(null);

function resolveAuthEmail(login: string) {
  const normalizedLogin = login.trim();

  if (normalizedLogin.includes('@')) return normalizedLogin;

  return `${normalizedLogin}@admin.local`;
}

export function AdminAuthProvider({ children }: { children: ReactNode }) {
  const supabase = useMemo(() => createSupabaseBrowserClient(), []);
  const [state, setState] = useState<AdminAuthState>(initialState);

  const clearSessionState = useCallback((error: string | null = null) => {
    setState({
      error,
      isAdmin: false,
      isLoading: false,
      userEmail: null,
    });
  }, []);

  const checkAdminSession = useCallback(async (session: Session | null) => {
    if (!session?.user) {
      clearSessionState();
      return false;
    }

    const { data, error } = await supabase
      .from('admin_users')
      .select('id')
      .limit(1);

    if (error || !data?.length) {
      await supabase.auth.signOut();
      clearSessionState(error?.message ?? 'Conta sem permissão administrativa.');
      return false;
    }

    setState({
      error: null,
      isAdmin: true,
      isLoading: false,
      userEmail: session.user.email ?? null,
    });
    return true;
  }, [clearSessionState, supabase]);

  useEffect(() => {
    let mounted = true;

    supabase.auth.getSession().then(({ data }) => {
      if (mounted) {
        checkAdminSession(data.session);
      }
    });

    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      checkAdminSession(session);
    });

    return () => {
      mounted = false;
      listener.subscription.unsubscribe();
    };
  }, [supabase, checkAdminSession]);

  const signIn = useCallback(async (login: string, password: string) => {
    setState(currentState => ({ ...currentState, error: null, isLoading: true }));
    const email = resolveAuthEmail(login);
    const { data, error } = await supabase.auth.signInWithPassword({ email, password });

    if (error) {
      clearSessionState(error.message);
      return false;
    }

    return checkAdminSession(data.session);
  }, [checkAdminSession, clearSessionState, supabase]);

  const signOut = useCallback(async () => {
    setState(currentState => ({ ...currentState, error: null, isLoading: true }));
    await supabase.auth.signOut();
    clearSessionState();
  }, [clearSessionState, supabase]);

  const value = useMemo<AdminAuthContextValue>(() => ({
    ...state,
    signIn,
    signOut,
  }), [state, signIn, signOut]);

  return (
    <AdminAuthContext.Provider value={value}>
      {children}
    </AdminAuthContext.Provider>
  );
}

export function useAdminAuth() {
  const context = useContext(AdminAuthContext);

  if (!context) {
    throw new Error('useAdminAuth deve ser usado dentro de AdminAuthProvider.');
  }

  return context;
}
