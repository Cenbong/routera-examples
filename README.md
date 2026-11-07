# RouterA Examples

> **One OpenAI-compatible API** that routes to free/cheaper LLM providers first.

This repository is **examples only**. The RouterA platform itself is **not** open-sourced here. Use these snippets to call the hosted API.

| | |
|---|---|
| **Product** | [https://routera.ai](https://routera.ai) |
| **API base URL** | `https://api.routera.ai/v1` |
| **中文说明** | [README.zh-CN.md](./README.zh-CN.md) |

## Why RouterA

- Drop-in OpenAI SDK: change one line — `baseURL` / `base_url`
- Smart routing: prefer free quotas, then cheaper sources; degrade when a provider fails (see console / `/v1/models` for what is live)
- Self-serve signup credits — amounts follow the live public config (do not hard-code):

```bash
curl -fsS https://api.routera.ai/public/signup-rewards
```

Typical live values (verify with the call above): signup **$1**, referral **$1**, first recharge **20%**.

## Quick start

1. Create an account and API key at [https://routera.ai](https://routera.ai)
2. Export your key (never commit it):

```bash
export ROUTERA_API_KEY="sk-..."
```

3. Pick an example:

| Path | What it shows |
|------|----------------|
| [`examples/curl/`](./examples/curl/) | Minimal `chat/completions` with curl |
| [`examples/openai-sdk/`](./examples/openai-sdk/) | Node.js OpenAI SDK |

Health check (no key):

```bash
curl -fsS https://api.routera.ai/health
```

List models (public):

```bash
curl -fsS https://api.routera.ai/v1/models
```

Use a **currently available** `model` from `/v1/models` or the console. Example snippets use `deepseek-chat` as a placeholder name only.

## Repository scope

- ✅ Curl / OpenAI SDK samples for the hosted OpenAI-compatible API
- ✅ Issue templates for sample bugs and feature ideas
- ❌ Not the RouterA server source code
- ❌ Not a promise of self-host, full org console, or compliance certifications

## Suggested topics

See [TOPICS.md](./TOPICS.md): `openai-api` · `llm` · `ai-gateway` · `chatgpt-api` · `openai-compatible`

## License

MIT for **this examples repository** only. The hosted RouterA product and any private platform repos use separate terms.

## Links

- Website: [https://routera.ai](https://routera.ai)
- API: `https://api.routera.ai/v1`
- Signup rewards (live JSON): `GET https://api.routera.ai/public/signup-rewards`
