# RouterA 示例仓库

> **一个 OpenAI 兼容接口**，优先走免费 / 低价大模型源。

本仓库 **仅含示例代码**。RouterA 主平台 **未在此开源**。请用下列片段调用正式托管 API。

| | |
|---|---|
| **产品入口** | [https://routera.ai](https://routera.ai) |
| **API base_url** | `https://api.routera.ai/v1` |
| **English** | [README.md](./README.md) |

## 为什么用 RouterA

- 换一行即可接入 OpenAI SDK：`baseURL` / `base_url`
- 智能路由：免费额度优先，再选低价源；厂商异常可降级（以控制台与 `/v1/models` 现网为准）
- 自助开发者赠送 — **金额以公开接口为准，勿写死**：

```bash
curl -fsS https://api.routera.ai/public/signup-rewards
```

现网常见：注册体验金 **$1**、邀请 **$1**、首充 **20%**（请以上述接口返回为准）。

## 5 分钟跑通

1. 在 [https://routera.ai](https://routera.ai) 注册并创建 API Key  
2. 导出密钥（勿提交到 Git）：

```bash
export ROUTERA_API_KEY="sk-..."
```

3. 选择示例：

| 路径 | 说明 |
|------|------|
| [`examples/curl/`](./examples/curl/) | 最小 curl `chat/completions` |
| [`examples/openai-sdk/`](./examples/openai-sdk/) | Node.js OpenAI SDK |

健康检查（无需 Key）：

```bash
curl -fsS https://api.routera.ai/health
```

公开模型列表：

```bash
curl -fsS https://api.routera.ai/v1/models
```

`model` 请从 `/v1/models` 或控制台选 **当前可用** 模型；示例里的 `deepseek-chat` 仅为占位名。

## 本仓范围

- ✅ 托管 OpenAI 兼容 API 的 curl / SDK 样例
- ✅ 样例相关 bug / 功能建议 Issue 模板
- ❌ 不是 RouterA 服务端源码
- ❌ 不承诺自建部署、完整 Org 后台或合规认证闭环

## 建议 Topics

见 [TOPICS.md](./TOPICS.md)：`openai-api` · `llm` · `ai-gateway` · `chatgpt-api` · `openai-compatible`

## License

本 **示例仓库** 使用 MIT。托管产品与任何私有平台仓库另有协议，与本仓无关。

## 链接

- 官网：[https://routera.ai](https://routera.ai)
- API：`https://api.routera.ai/v1`
- 赠送口径（实时 JSON）：`GET https://api.routera.ai/public/signup-rewards`
