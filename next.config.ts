import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  agentRules: false,
  images: {
    unoptimized: true,
  },
  outputFileTracingRoot: process.cwd(),
  reactStrictMode: true,
};

export default nextConfig;
