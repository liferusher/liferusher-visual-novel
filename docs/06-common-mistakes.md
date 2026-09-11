# 6. Common Mistakes (Structural)

Chapter 5 was sentence-level. These are the mistakes that survive line editing
because they live in the architecture.

## 1. The first hour is boring

The most common reason people drop a VN. A protagonist wakes up, goes to school,
meets the cast, nothing happens for ninety minutes.

**Why writers do it:** they're setting up payoffs. **Why it fails:** nobody stays
for a payoff they can't see coming.

Fixes:
- **Open on a question.** Not necessarily a mystery — a social question works.
  "Why is there a girl asleep in the clubroom I have a key to?"
- **Cold open.** Start with a fragment of a later, more charged scene, then cut
  back. (*Steins;Gate*, *999*, and most mystery VNs do this.)
- **Front-load voice.** If nothing is happening, the narration must be
  *entertaining*. Funny, sharp, weird — something the reader stays for.
- **Move the first real turn earlier.** Whatever your chapter-3 hook is, ask
  whether a version of it can happen in chapter 1.

**Diagnostic:** if someone stopped at the 30-minute mark, could they tell you
what the story is *about*? If not, fix it.

## 2. The infodump

Worldbuilding, magic systems, political history, delivered in a block.

Fixes:
- **Split it.** No more than 3–4 boxes of exposition before something happens.
- **Attach it to want.** Exposition is bearable when a character *wants* the
  information: someone asked, someone's arguing, someone's lying about it.
- **Let it be wrong.** A character who explains it incorrectly and gets corrected
  is twice as interesting as a character who explains it correctly.
- **Use a glossary/TIPS system.** *Steins;Gate*, *Danganronpa*, *Fate/stay night*
  and *Umineko* all offload optional depth into readable-on-demand entries.
  Genuinely one of the medium's best inventions. Put the *fun* details there and
  keep the mainline text moving.
- **Cut the origin story.** Readers accept rules; they resent lectures.

## 3. The route that's a different game

A route where the protagonist's personality, the tone, or the world's rules
change without justification.

Routes should feel like **different facets of one story**, not different stories.
Anchor with: consistent protagonist voice, recurring locations, motifs that
appear in every route with different meanings.

## 4. Harem physics (unmotivated attraction)

Every heroine likes the protagonist, for no stated reason, from scene one.

Fix: **give every attraction a cause and a cost.**
- Cause: a specific thing the protagonist did or is. Not "he was nice."
- Cost: what does liking him make difficult for her?

The cost is the part people skip and it's the part that makes it feel real.

## 5. The blank protagonist

The "self-insert" theory says a featureless protagonist is easier to identify
with. In practice, readers identify with *specific* characters and bounce off
*empty* ones.

A protagonist can have low agency and still have: opinions, humor, a history, a
recognizable way of being wrong. Compare the protagonists of *Steins;Gate*,
*Katawa Shoujo*, *VA-11 Hall-A*, or *Clannad* — none are blank, all are
inhabitable.

**Minimum viable protagonist:** one strong opinion, one fear, one joke they keep
making.

## 6. The tonal whiplash dump

Twelve hours of comedy, then a sudden tragedy with no tonal preparation.

VN tragedy works when the comedy *contained* the tragedy all along — the warm
scenes had a shadow in them. Seed it:
- A detail that reads as a quirk early and as a symptom later
- A joke a character makes about something that turns out to be true
- A location that's cheerful in act 1 and empty in act 3

## 7. Choices that aren't choices

See chapter 8 for depth. Short version: if all options lead to the same next
box and produce no flag, no relationship change, and no different line of
dialogue, the reader learns that choices don't matter — and then they stop
reading the choices.

## 8. Route bloat / the endless common route

A common route so long that reaching a heroine's content takes 15 hours.

Fixes:
- Make common-route scenes do double duty: character A's scene should also plant
  character B's seed.
- Let the common route branch *early* into short character-specific pockets, so
  investment starts sooner.
- Be honest about length. A tight 8-hour VN beats a padded 40-hour one.

## 9. The ending that stops instead of ends

Plot resolves, then the file ends. No emotional landing.

Every route ending wants:
1. **The plot answer** (what happened)
2. **The emotional answer** (what it meant to this person)
3. **The image** (one concrete picture the reader keeps)

The image is the part people remember. Give the last box something to *see*.

## 10. Writing the script without the engine

Writing 100k words in a text editor and only then discovering the boxes don't
break right, the scenes need CGs you can't afford, and the branching structure
is unimplementable.

**Write in the engine, or in a format that maps 1:1 to it**, from the first
scene. Prototype one full scene with real assets before writing chapter 2.

## 11. Inconsistent conventions

Sometimes thoughts are in parens, sometimes italics. Sometimes narration
addresses the reader, sometimes not. Sometimes honorifics, sometimes not.
Sometimes the protagonist's name appears in the name box, sometimes it's blank.

Pick conventions, write them in a style sheet, enforce them with grep. See
`docs/13-self-edit-checklist.md`.

## 12. Nobody proofreads the choice screens and menus

Typos in the main script get caught. Typos in choice text, save-slot names, tips
entries, and the achievement list survive to release. Budget a dedicated pass.

## 13. The protagonist who narrates their own charm

```
Bad:  I gave her my most charming smile. She was clearly flustered.
```
Let other characters establish the protagonist's effect. Self-reported charisma
reads as delusion (which is fine if that's the joke, and fatal if it isn't).

## 14. Length as a proxy for depth

Word count is not emotional weight. A 40-box confession scene is usually a
12-box confession scene with 28 boxes of hedging in it. Cut to the bone and the
scene gets *more* emotional, not less.
