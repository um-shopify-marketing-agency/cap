# memory/

cap's persistent state. Both `context.md` and `conversations/*.md` are
gitignored — they live in the Trinity runtime volume, not in git
(matches Confi-agent's pattern: tracking runtime state caused incidents
where `Trinity Pull --force_reset` wiped users' data).

## Files

- **`context.md`** — long-term agency context. Things cap learns about UM,
  the team, decisions, ongoing situations. Grows over time. Read at the
  start of every consultation; appended at the end if new facts emerged.
- **`conversations/{YYYY-MM-DD}-{slug}.md`** — short summary of each
  consultation: question, advice given, principles applied. The 3-5 most
  recent are read at the start of every turn for continuity.
