# 13. Self-Edit Checklist

Run these passes in order. Do not try to do them at once — each pass looks for
one thing, and mixing them means you catch none of them well.

---

## Pass 1 — Structure (scene level, no line editing)

- [ ] Does every scene have a **turn**? List them. Any scene without one: is it
      deliberately a texture scene, or is it filler?
- [ ] Does the first scene establish **voice, a question, and someone to like**?
- [ ] Is the first real hook inside the first 20 minutes?
- [ ] Does each chapter end on a reason to continue?
- [ ] Do the routes feel like the same story? Same protagonist voice?
- [ ] Does every ending have plot answer + emotional answer + image?
- [ ] Any scene you'd skip on a re-read? Cut or fix it.

## Pass 2 — Character

- [ ] **Cover the name box test.** Take 20 random dialogue lines. Can you assign
      each to the right character?
- [ ] Does each character have 3–4 stable fingerprint traits? (ch. 3)
- [ ] Does every attraction have a cause AND a cost?
- [ ] Is anyone only their archetype?
- [ ] Does anyone's speech pattern drift between chapters?
- [ ] Does the protagonist have one opinion, one fear, one running joke?

## Pass 3 — Pacing (read in the engine, clicking)

- [ ] Any box longer than 3 lines in ADV? Split it.
- [ ] Any run of 8+ dialogue lines with no grounding beat? Add one.
- [ ] Any run of 4+ narration boxes with no dialogue? Check it's earning it.
- [ ] Are your box lengths varied, or are they all the same size?
- [ ] Are withholding breaks used at the right moments and not everywhere?
- [ ] Do the important words land at the *ends* of boxes?
- [ ] Read a chapter with auto-mode on at reading speed. Where did you get bored?

## Pass 4 — Line editing (the search-and-destroy pass)

Run these regexes over the whole script. Not every hit is wrong; every hit
deserves ten seconds.

```bash
# Filter words
grep -nEi '\b(I|he|she|they) (saw|heard|felt|noticed|realized|watched|observed|thought|decided|found myself)\b' script/*

# Weak intensifiers (check narration, spare dialogue)
grep -nEi '\b(very|really|quite|rather|extremely|totally|literally|basically|somewhat|actually|just)\b' script/*

# -ly adverbs on speech
grep -nEi '\b(said|asked|replied|shouted|whispered|muttered) [a-z]+ly\b' script/*

# Adverb-first sentences
grep -nEi '(^|[.!?"] )(Suddenly|Slowly|Quickly|Quietly|Carefully|Gently|Immediately),' script/*

# Purple vocabulary
grep -nEi '\b(orbs|tresses|locks|porcelain|cerulean|azure|crimson|sapphire|emerald) \b' script/*

# Throat-clearing verbs
grep -nE '\b(began to|started to|proceeded to|was able to)\b' script/*

# Perception hedges
grep -nE '\b(could (see|hear|feel|smell)|seemed to|appeared to)\b' script/*

# Ellipsis density (flag lines with 2+)
grep -nE '\.\.\..*\.\.\.' script/*

# Exclamation density (flag lines with 2+)
grep -nE '!.*!' script/*

# Tense slippage in present-tense narration
grep -nE '\b(was|were|had been)\b' script/*   # review narration hits only
```

- [ ] Filter words removed from narration
- [ ] Adverbs on speech tags removed
- [ ] Speech tags removed where the name box covers it
- [ ] Narration that echoes dialogue deleted
- [ ] Emotion-naming replaced with evidence (except deliberate flat statements)
- [ ] No description of what the sprite already shows
- [ ] Tense consistent

## Pass 5 — Consistency / style sheet

Maintain a style sheet file and check against it:

```
POV:                  1st person, present tense, protagonist = Rei
Inner thought:        (parentheses), no italics
Honorifics:           used; -san/-kun/-chan/-senpai only
Name box:             protagonist shows as "Rei", not "Me"
Ellipsis:             three dots, no spaces: "..."
Em dash interrupt:    "I—" with no space
Numbers:              spelled out below 10
Silence line:         "..." on its own, quoted, in the speaker's name box
SFX text:             italics, lowercase
Honorific drop beat:  Kaede -> "Rei" in Ch. 9 only
```

- [ ] Every convention on the sheet is applied everywhere
- [ ] Character names spelled consistently (grep each one)
- [ ] Place names consistent
- [ ] Honorific usage consistent per relationship
- [ ] Chapter/scene title formatting consistent

## Pass 6 — Branching integrity

- [ ] Every flag is set somewhere and read somewhere (list both)
- [ ] Every route reachable; confirm with a test run per route
- [ ] Every ending reachable
- [ ] No choice with identical outcomes on all branches (or if there is, it's
      deliberate expression, not accident)
- [ ] Route-specific text is genuinely different (skip mode will expose it)
- [ ] Flowchart/route map accurate, if you have one

## Pass 7 — The stuff nobody proofreads

- [ ] Choice text
- [ ] Chapter titles
- [ ] TIPS / glossary entries
- [ ] Menu, settings, save-slot labels
- [ ] Achievement names and descriptions
- [ ] Credits
- [ ] Store page description

## Pass 8 — Out loud

Read one full chapter aloud. Mark every place you stumbled. Stumbles are almost
always real problems — a clause too long, a repeated sound, an unspeakable line.

## Pass 9 — Someone else

Watch someone play the first hour without saying anything. Write down:
- where they laughed
- where they skimmed
- where they looked confused
- where they stopped

That list is your revision plan.
