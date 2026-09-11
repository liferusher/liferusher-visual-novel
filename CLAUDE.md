# Working in this repo

This repository holds a **visual novel writing knowledge base** and (eventually)
the VN script itself.

## If you are helping write or edit VN prose

Read these before drafting or critiquing any scene text:

- `docs/05-good-vs-bad-wording.md` — the sentence-level rules
- `docs/13-self-edit-checklist.md` — the revision passes
- `templates/style-sheet.md` — **project conventions; these override general advice**

The style sheet is the authority on person, tense, punctuation, honorifics, name
spellings, and box limits. If it's filled in and your draft contradicts it, the
style sheet wins.

Run the linter on prose you've written or changed:

```bash
tools/vn-lint.sh path/to/script
```

Its hits are candidates, not errors — a clean run is not the goal, and several
rules (intensifiers, ellipses) are *correct* inside dialogue as character voice.

## House rules for scene text

Condensed from `docs/01`–`docs/05`. Apply these unless the style sheet says
otherwise:

- **Split boxes aggressively.** One idea per box. The click is punctuation.
- **No speech tags** — the name box does attribution. Keep a trailing clause only
  when it carries attitude, never when it carries "who said it".
- **No adverbs on speech verbs.** Rewrite the line instead.
- **Narration must not echo dialogue.** It should complicate, contradict, or add
  what the sprite can't show. If a narration line could be deleted with nothing
  lost, delete it.
- **Don't describe what the sprite or BG already shows.**
- **No filter words** (`I saw`, `I felt`, `I realized`) unless the act of
  perceiving is the point.
- **Evidence over emotion labels** — except the deliberate flat statement after
  evidence has been earned.
- **Max one ellipsis per line.** A bare `"..."` box is a strong beat; ellipses
  inside every line is mumbling.
- **Important words land at the end of the box.**

## Prose conventions in the documentation itself

The docs use a consistent notation. Match it when adding to them:

- `>` on its own line means a click / box break in an example
- Examples are labelled `Bad:` / `Good:` / `Before` / `After`
- All example prose is **original** — do not paste text from published VNs
- Claims about specific published works are framed as craft judgments, not facts;
  keep that framing

## Structure

```
docs/          15 numbered chapters, meant to be read in order but usable as lookup
templates/     fill-in-the-blank working files (voice sheet, scene, route, style)
examples/      annotated rewrites and one full annotated scene
tools/         vn-lint.sh — prose linter implementing docs/13's patterns
```

When adding a chapter, number it, and add a row to the README's lookup table.

## Engine

`docs/14` assumes **Ren'Py** for code examples. No engine is set up in this repo
yet. If one gets chosen and it isn't Ren'Py, update `docs/14` rather than
scattering engine-specific advice elsewhere.
