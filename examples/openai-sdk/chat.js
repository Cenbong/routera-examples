/**
 * Minimal RouterA chat via OpenAI Node SDK.
 * Copy .env.example → set ROUTERA_API_KEY (never commit real keys).
 */
import OpenAI from "openai";

const apiKey = process.env.ROUTERA_API_KEY;
if (!apiKey) {
  console.error("Set ROUTERA_API_KEY (create a key at https://routera.ai).");
  process.exit(1);
}

const client = new OpenAI({
  apiKey,
  baseURL: process.env.ROUTERA_BASE_URL || "https://api.routera.ai/v1",
});

const model = process.env.ROUTERA_MODEL || "deepseek-chat";

const resp = await client.chat.completions.create({
  model,
  messages: [{ role: "user", content: "ping" }],
});

console.log(resp.choices[0]?.message?.content ?? resp);
