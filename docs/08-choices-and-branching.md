# 8. Choices and Branching

## What a choice is for

A choice does one of four jobs. Know which one yours is doing:

1. **Expression** — lets the reader say who the protagonist is. May not change
   the plot at all. Still valuable if the *response* differs.
2. **Investment** — routes affection/flags. The classic dating-sim choice.
3. **Information** — picks what you learn, not what happens. Great for mystery.
4. **Consequence** — actually forks the story. Rare, expensive, memorable.

A choice that does none of these should be cut. Fake choices are worse than no
choices, because they train the reader to skim.

## Wording choices

### Keep them short and parallel

```
Bad (unparallel, one option obviously "correct"):
    > Tell her the truth because she deserves to know
    > Lie

Good:
    > Tell her the truth
    > Tell her what she wants to hear
```

Parallel grammatical structure. Similar length. Neither option pre-judged by the
wording.

### Don't telegraph the outcome

```
Bad:
    > Go to the festival with Yuki (+affection)
    > Stay home alone

Good:
    > Go with Yuki
    > Stay home
```

Exception: some modern VNs deliberately show flags for accessibility/anti-
frustration. That's a design decision — make it consistently or not at all.

### Write choices in the protagonist's voice

Choices are the protagonist speaking or deciding. They should sound like them.

```
Flat:     > Ask about her family
In-voice: > "So. Family. Big topic. Any thoughts?"
```

Short-form VNs often quote the exact line the protagonist will say. Longer VNs
usually use action summaries. Either works; pick one.

### Avoid the trick choice with no information

A choice where one option leads to an unforeshadowed bad end and the reader had
zero basis to choose is a punishment, not a decision. If you use insta-fail
choices (*Zero Escape*, older *Ace Attorney*), give a clue and an easy recovery.

### The silent option

`> Say nothing` is one of the most reliably strong VN choices. It's in character
for almost any protagonist, it's emotionally loaded, and it forces the other
character to fill the space.

## Choice placement

- **Not at the top of a scene.** The reader needs context to choose.
- **Right after a turn.** The scene delivers new information → the reader
  responds to it.
- **Not more than ~1 per scene** in a story-driven VN. Choice fatigue is real.
- **Never immediately after another choice** unless you're doing an escalation
  sequence deliberately.

## Structural patterns

### Common route → branch (classic *eroge*/Key structure)

```
        [COMMON ROUTE]
              |
    +----+----+----+----+
    |    |    |    |    |
   A    B    C    D   (bad end)
```
Shared setup, then character routes. Strength: economical, deep individual
routes. Weakness: the long common route (see ch. 6, #8).

### Hub and spoke

```
        [HUB]  <->  short episodes, unlocked by flags
```
Good for episodic, low-branch stories. *Coffee Talk*, *VA-11 Hall-A* lean this way.

### Gauntlet / trunk with foliage

```
    A -> B -> C -> D -> ENDING
     \    \    \
      x    x    x      (failure states that return you)
```
Mostly linear with local branches. Cheapest structure that still feels
interactive. Most indie VNs should start here.

### Convergent routes (the *Higurashi*/*Zero Escape* shape)

Routes that must ALL be read, in which each pass reveals information that
recontextualizes the others, converging on a true route.

Enormously powerful, enormously hard: every route has to be satisfying alone AND
load-bearing for the whole. Budget accordingly.

### Kinetic novel

Zero choices. Fully linear. Completely legitimate — *Planetarian*, *Narcissu*,
*Saya no Uta* (near-kinetic). If your story doesn't want branches, don't bolt
them on.

## Flags: practical advice

- **Name flags readably.** `yuki_trust`, not `flag_37`.
- **Prefer numeric affection over boolean flags** when you want gradual response;
  prefer booleans for discrete story facts.
- **Write one "flag map" document** listing every flag, where it's set, where
  it's read. Keep it current or branching becomes unmaintainable.
- **Gate on state, not on choice history**, where you can. "Does Yuki trust you?"
  is more maintainable than "did the player pick choice 4 in scene 12?"

## Endings

Conventional taxonomy:

| Type | Purpose |
|---|---|
| **True end** | Canonical resolution; usually gated behind seeing others |
| **Good end** | Route resolves happily |
| **Normal end** | Resolves, but something is lost |
| **Bad end** | Failure state; short, pointed, often the most memorable writing |
| **Joke end** | Comic release valve |

**Bad ends deserve real writing.** A one-line "You died." is a wasted
opportunity. The best VN bad ends are 10–30 boxes that are genuinely chilling or
genuinely sad, and they make the good end mean more. *Higurashi*, *Zero Escape*,
and *Saya no Uta* all treat bad ends as first-class content.

## Reader-experience conventions you should support

These are not writing, but they shape how your writing is received. Readers
expect them, and lacking them makes long branching VNs miserable:

- **Skip-read-text** (skip only previously-seen text)
- **Backlog / history** with replay of voiced lines
- **Save anywhere**, many slots
- **A flowchart or route map** for convergent structures (*Zero Escape* set this
  standard and it is now close to mandatory for complex branching)
- **Auto mode with adjustable speed**

Write knowing readers will skip. That means: **route-specific text must be
genuinely different**, or skip-mode will expose that it isn't.
