# cap

CEO advisor for UM — Shopify marketing agency. Lives in Slack DMs.

## What it does

Answers management / leadership / strategy questions, grounded **exclusively**
in Artem Borodatyuk's three management books ("Для менеджерів"). Sharp,
truthful, fair tone. Maintains long-term context about the agency across
sessions so quality compounds over time.

## Status

**Skeleton only.** Books are not yet distilled into `knowledge/principles.md`
and `CLAUDE.md` is a placeholder. Do not deploy until distillation is done.

## Deploy (after distillation)

```bash
cd Agents/cap/
cp .env.example .env       # nothing to fill at MVP
trinity deploy .
```

After deploy, in Trinity UI: Agent detail → Sharing → Create Channel → bind cap to a Slack DM.

## Files

- `template.yaml` — Trinity manifest
- `CLAUDE.md` — system prompt (the brain)
- `.mcp.json.template` — MCP servers (empty at MVP)
- `.env.example` — environment variables (empty at MVP)
- `knowledge/`
  - `principles.md` — distilled laws from Borodatyuk's three books (the core, read every turn)
  - `book-1.md`, `book-2.md`, `book-3.md` — full text extracts (reference only)
- `memory/`
  - `context.md` — long-term agency context, accumulated across sessions
  - `conversations/` — short summaries of past consultations
- `content/borodatyuk/` — drop the original EPUB files here (gitignored)

## Reference

- Trinity docs: https://github.com/abilityai/trinity/tree/main/docs (used `TRINITY_COMPATIBLE_AGENT_GUIDE.md`)
- Reference Trinity agent: [Confi-agent](../Confi-agent)
