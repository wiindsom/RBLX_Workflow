#!/bin/bash
set -e

echo "🛠 Running Darklua optimizations..."

darklua process src/ dist/ --config configs/darklua.json

echo "✅ Done! Optimized files written to 'dist/'"

# alias: buildlua