import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  agentRules: false,
  outputFileTracingRoot: process.cwd(),
  reactStrictMode: true,
  async redirects() {
    return [
      {
        source: '/players',
        destination: '/ranking',
        permanent: true,
      },
      {
        source: '/index.html',
        destination: '/',
        permanent: true,
      },
    ];
  },
};

export default nextConfig;
