#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "❌ Please provide a project name without '.project.json'. Example:"
  echo "   ./scripts/serve.sh develop"
  exit 1
fi

PROJECT="$1.project.json"

if [ -f "$PROJECT" ]; then
  echo "🚀 Serving $PROJECT ..."
  rojo serve "$PROJECT"
else
  echo "❌ File '$PROJECT' not found!"
  exit 1
fi

# alias: rserve <file>.project.json