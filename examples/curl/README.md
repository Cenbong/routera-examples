# curl example

```bash
export ROUTERA_API_KEY="sk-..."   # from https://routera.ai — do not commit
./chat-completions.sh
```

Optional:

```bash
export ROUTERA_BASE_URL="https://api.routera.ai/v1"
export ROUTERA_MODEL="deepseek-chat"   # must be currently available on /v1/models
```

No-key checks:

```bash
curl -fsS https://api.routera.ai/health
curl -fsS https://api.routera.ai/public/signup-rewards
curl -fsS https://api.routera.ai/v1/models
```
