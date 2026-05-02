# knowledge/

Reference material cap operates by.

## Files

- **`principles.md`** — distilled laws from Borodatyuk's three books. The
  core. Read every turn by the agent. Each principle has an ID `P-{number}`
  that cap cites in its answers.
- **`book-1.md`, `book-2.md`, `book-3.md`** — full text extracted from EPUB.
  Reference only — agent does not read these directly. Used to verify
  quotes and trace principles back to source during distillation review.

## Distillation process

1. User drops EPUBs into `../content/borodatyuk/` (gitignored).
2. We convert EPUB → markdown → `book-{1,2,3}.md` (committed).
3. We read all three and write `principles.md` (laws + verbatim quotes + when to apply).
4. User reviews and approves `principles.md` before agent uses it.
