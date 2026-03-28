#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for datazip-inc/olake-docs
# Runs on existing source tree (no clone). Installs deps and builds.

echo "[INFO] Node version: $(node -v)"
echo "[INFO] NPM version: $(npm -v)"

# --- Install dependencies ---
echo "[INFO] Installing dependencies..."
npm ci --legacy-peer-deps

# --- Build ---
echo "[INFO] Running build..."
npm run build

echo "[DONE] Build complete."
