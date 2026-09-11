# Visual Novel Writing & Wording — Knowledge Base

A working reference for writing visual novel text: what the medium rewards, what
it punishes, and how the best-known VNs actually word things at the sentence
level.

This is a craft reference, not a lore bible. It is opinionated where craft
requires an opinion, and it says so when something is a convention rather than
a rule.

## Start here

If you have never written a VN script before, read in this order:

1. [`docs/01-what-makes-vn-prose-different.md`](docs/01-what-makes-vn-prose-different.md) — the medium's actual constraints
2. [`docs/02-narration-and-voice.md`](docs/02-narration-and-voice.md) — person, tense, POV, interiority
3. [`docs/03-dialogue-craft.md`](docs/03-dialogue-craft.md) — making characters sound like people
4. [`docs/04-pacing-and-the-text-box.md`](docs/04-pacing-and-the-text-box.md) — the click is your line break
5. [`docs/05-good-vs-bad-wording.md`](docs/05-good-vs-bad-wording.md) — before/after rewrites

Then use the rest as lookup:

| File | Use it when |
|---|---|
| [`06-common-mistakes.md`](docs/06-common-mistakes.md) | Your prose feels "off" and you can't name why |
| [`07-genre-registers.md`](docs/07-genre-registers.md) | Choosing the voice for a slice-of-life / horror / mystery / romance scene |
| [`08-choices-and-branching.md`](docs/08-choices-and-branching.md) | Writing choice text and route structure |
| [`09-translationese.md`](docs/09-translationese.md) | Your English VN accidentally reads like a fan patch |
| [`10-reference-works.md`](docs/10-reference-works.md) | You want a model to study for a specific effect |
| [`11-scene-construction.md`](docs/11-scene-construction.md) | Building a scene from zero |
| [`12-glossary.md`](docs/12-glossary.md) | You hit a term like *nakige*, *kinetic novel*, *tsukkomi* |
| [`13-self-edit-checklist.md`](docs/13-self-edit-checklist.md) | A draft is done and you're revising |
| [`14-script-format-and-engine.md`](docs/14-script-format-and-engine.md) | Turning craft rules into actual script syntax |
| [`15-scope-and-production.md`](docs/15-scope-and-production.md) | Planning the project, before you over-commit |
| [`16-character-tropes.md`](docs/16-character-tropes.md) | Designing a cast — archetypes, why they work, how to deepen them |
| [`17-scene-tropes.md`](docs/17-scene-tropes.md) | Writing a set-piece: festival, confession, rooftop, hospital |

## Templates & examples

- [`templates/scene-skeleton.md`](templates/scene-skeleton.md) — blank scene structure with beat slots
- [`templates/character-voice-sheet.md`](templates/character-voice-sheet.md) — fill one per speaking character
- [`templates/route-outline.md`](templates/route-outline.md) — common-route / branch planning grid
- [`templates/style-sheet.md`](templates/style-sheet.md) — lock your conventions before chapter 2
- [`templates/trope-plan.md`](templates/trope-plan.md) — cast audit + set-piece inventory
- [`examples/before-after.md`](examples/before-after.md) — annotated rewrites of weak VN prose
- [`examples/sample-scene.md`](examples/sample-scene.md) — one complete scene, written to these rules, with margin notes

## Tools

```bash
tools/vn-lint.sh game/script.rpy     # prose linter: the docs/13 patterns, runnable
tools/vn-lint.sh --quiet game/       # counts only
tools/vn-lint.sh --only filter game/ # one rule at a time
```

It reports *candidates*, not errors. Several rules are deliberately correct
inside dialogue. A clean run is not the goal.

## If you only take three things

1. **Split your boxes.** The click is punctuation — see [`docs/04`](docs/04-pacing-and-the-text-box.md).
2. **Narration should complicate dialogue, never echo it** — see [`docs/02`](docs/02-narration-and-voice.md).
3. **Make the first one short.** A finished two-hour VN beats an abandoned forty-hour
   one — see [`docs/15`](docs/15-scope-and-production.md).

## The one-paragraph version

VN prose is read one text box at a time, on a timer the *reader* controls, over
a static image. That means: short sentences, high line-to-line momentum, a
narrator with a strong personality, dialogue that carries most of the
characterization, and ruthless deletion of anything the sprite, the BGM, or the
background is already telling the reader. Everything else in this repo is a
consequence of that paragraph.
