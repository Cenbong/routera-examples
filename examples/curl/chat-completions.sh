#!/usr/bin/env bash
# Minimal RouterA chat/completions via curl.
# Requires: ROUTERA_API_KEY from https://routera.ai (never commit a real key).
set -euo pipefail

BASE_URL="${ROUTERA_BASE_URL:-https://api.routera.ai/v1}"
MODEL="${ROUTERA_MODEL:-deepseek-chat}"

if [[ -z "${ROUTERA_API_KEY:-}" ]]; then
  echo "Set ROUTERA_API_KEY first (create a key at https://routera.ai)." >&2
  exit 1
fi

curl -fsS "${BASE_URL}/chat/completions" \
  -H "Authorization: Bearer ${ROUTERA_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$(cat <<JSON
{
  "model": "${MODEL}",
  "messages": [{"role": "user", "content": "ping"}]
}
JSON
)"
echo
