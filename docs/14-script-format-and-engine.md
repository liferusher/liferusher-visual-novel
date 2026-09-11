# 14. Script Format and the Engine

> **Assumption:** this chapter uses **Ren'Py** for concrete examples, because it's
> the dominant engine for indie and English-language VNs. The principles map
> directly to TyranoBuilder, Naninovel, Monogatari, and hand-rolled engines —
> only the syntax changes. If you've chosen a different engine, the *craft*
> points still apply; swap the code blocks.

## Write in the engine from day one

`docs/06` lists this as a mistake to avoid. It's worth its own chapter because
it's the one people ignore.

Writing 80,000 words in Google Docs and *then* porting them means you discover
all at once that:

- your boxes overflow at the real font size
- you wrote nine CGs you can't afford
- your branching structure needs variables you never planned
- the pacing you felt while writing prose doesn't exist when clicking

**Minimum viable setup before writing chapter 2:** one scene, running, with
placeholder art, at final resolution, clicking through on real hardware.

Placeholder art is fine. Grey rectangles with names on them are fine. The point
is the *rhythm*, and rhythm only exists in the engine.

## Craft rules, in Ren'Py syntax

### The name box replaces speech tags

```renpy
define k = Character("Kaede", color="#c47f9a")
define r = Character("Rei")
define narrator = Character(None, kind=nvl)   # unnamed narration

label ch01_clubroom:
    scene bg clubroom_afternoon
    show kaede back_turned

    "Clubroom. Four-fifteen."          # narration: bare string, no character

    r "I need a signature."            # dialogue: character prefix
    k "Leave it on the desk."
    k "..."                            # the silence beat, free and strong
```

Every bare string is narration. Every prefixed string is dialogue. That
distinction *is* `docs/01`'s text-category table, enforced by syntax.

### The click is `\n` between statements, not inside them

```renpy
    # ONE box, three sentences — the reader gets no beats
    "She turned around. Her face was wet. So that's why she'd been quiet."

    # THREE boxes, three beats
    "She turns around."
    "Her face is wet."
    "...So that's why she hadn't said a word since the station."
```

This is the single highest-leverage thing the engine changes about your writing.
Splitting a string is free. Do it constantly.

### Withholding breaks

```renpy
    "When I finally open the door, what I see is"
    "nothing."
    "The room is completely empty."
```

Ren'Py renders each as its own box. The mid-sentence break from `docs/04` costs
you one newline.

### Let the engine do "suddenly"

```renpy
    # Bad — the adverb is doing the engine's job
    "Suddenly, there was a loud crash!"

    # Good
    play sound "sfx/crash.ogg"
    with vpunch
    "My tea is on the floor. I don't remember dropping it."
```

### Cut the music one box before the line

The cheapest dramatic effect in the medium (`docs/04`):

```renpy
    k "It's a *form*."
    r "It's an important form."
    stop music fadeout 1.0
    "That was a mistake."
    show kaede facing crying
    "She turns around."
```

### Sprite changes replace description

```renpy
    # Bad — describing what the player can see
    "Kaede smiled happily at me."

    # Good — sprite acts, narration complicates
    show kaede smile
    k "I'm glad you came."
    "It's a very good smile. She's been practising it since Tuesday."
```

## Structuring script files

One file per scene, named to sort:

```
game/
  script.rpy              # entry point, config only
  characters.rpy          # all Character() definitions
  ch01/
    ch01_s01_walk.rpy
    ch01_s02_clubroom.rpy
    ch01_s03_choice.rpy
  routes/
    kaede/
    yuki/
  flags.rpy               # all default statements, in one place
```

Why this matters: VN scripts get enormous, and a 30,000-line `script.rpy` is
unsearchable and unmergeable. One-scene files also make your scene list *visible*
in the directory, which makes `docs/11`'s scene-goal grid real.

### Keep every flag in one file

```renpy
# flags.rpy — the single source of truth. Mirror this into
# templates/route-outline.md's flag map.

default kaede_trust = 0        # 0-5, gate for her route at >=3
default yuki_trust = 0
default knows_about_the_fire = False
default chose_silence_ch03 = False
```

Naming them readably (`docs/08`) is the difference between a maintainable branch
structure and a haunted one.

### Gate on state, not on choice history

```renpy
    # Fragile — breaks the moment you reorder scenes
    if chose_option_4_in_scene_12:

    # Durable
    if kaede_trust >= 3:
```

## Choices in syntax

```renpy
menu:
    "Tell her the truth":
        $ kaede_trust += 1
        jump ch03_truth

    "Tell her what she wants to hear":
        $ kaede_trust -= 1
        jump ch03_lie

    "Say nothing":
        jump ch03_silence
```

Note the parallel phrasing and absence of telegraphed outcomes — that's
`docs/08`'s wording rules, which the syntax doesn't enforce for you.

## Things worth building early

| Feature | Why |
|---|---|
| **Skip-read-text** | On by default in Ren'Py. Never disable it. |
| **Backlog** | Free in Ren'Py. Test that it renders your formatting. |
| **Save anywhere** | Free. Don't add checkpoint-only saving. |
| **A flowchart screen** | Near-mandatory for convergent structures (`docs/08`). |
| **Text speed + auto-speed sliders** | Readers have strong preferences. |
| **A TIPS/glossary screen** | Your infodump release valve (`docs/06`). |
| **Content warning screen** | At launch, skippable. |

## Accessibility, briefly

Readers who need these will otherwise not finish your VN:

- **Font choice** — Ren'Py ships with an OpenDyslexic toggle in self-voicing
  settings; keep the default accessibility menu enabled.
- **Text size scaling** — test your boxes at 150%. If they overflow, your boxes
  are too long anyway.
- **Don't encode meaning in colour alone** — if a character's dialogue colour is
  the only way to tell who's speaking, the name box isn't doing its job.
- **Self-voicing** — Ren'Py has it built in. Test one chapter with it on; it will
  also expose every place your formatting is weird.
- **Avoid pure-white-on-pure-black** and unskippable flashing effects.

## Version control for prose

Plain-text scripts are diffable. Use that:

- **Commit per scene**, not per session. `git log` becomes your writing journal.
- **One sentence per line** in long narration blocks is a real technique — it
  makes diffs readable and, conveniently, forces you to see your box breaks.
- **Never commit generated files** (`game/saves/`, `.rpyc`, build output). A
  `.gitignore` for Ren'Py is the first file in the repo.
- **Tag your drafts** — `v0.1-demo`, `v0.2-ch1-revised`. You will want to read
  your own earlier version and be unable to find it otherwise.

```gitignore
# Ren'Py
game/saves/
game/cache/
*.rpyc
*.rpymc
/build/
```
