# 3. Dialogue Craft

Dialogue is 60–80% of a typical VN script. It carries characterization, plot,
comedy, and romance. It is the thing readers quote. Get this right and mediocre
plotting survives; get it wrong and nothing saves you.

## The name box changes everything

In prose you need "she said" to track speakers. In a VN the name box does it for
free.

**Consequence: delete nearly all speech tags.**

```
Bad:
    Yuki said, "I don't think that's a good idea."
    "Why not?" I asked.
    "Because," she replied, "it's illegal."

Good:
    YUKI: "I don't think that's a good idea."
    ME:   "Why not?"
    YUKI: "Because it's illegal."
```

Keep a tag only when it does work the name box can't:

```
YUKI: "Because it's illegal," she says, like I'm the one being unreasonable.
```

That trailing clause is attitude, not attribution. That's the only reason to
write it.

## Every character needs an identifiable fingerprint

The test: **cover the name box. Can you still tell who's talking?** If not, the
characters are one character wearing different sprites.

Fingerprint dimensions — pick 3–4 per character, keep them stable:

| Dimension | Range |
|---|---|
| **Sentence length** | Clipped fragments ↔ long winding sentences |
| **Register** | Slangy ↔ neutral ↔ formal ↔ archaic |
| **Politeness** | Blunt ↔ hedging ("maybe, I guess, sort of") |
| **Question rate** | Interrogates everyone ↔ never asks anything |
| **Filler / tics** | "um", "y'know", laughing mid-sentence, trailing "..." |
| **Vocabulary field** | Sports, cooking, medicine, gaming, literature |
| **Contractions** | "cannot" vs "can't" is an instant class/formality signal |
| **Self-reference** | "I" vs "one" vs name-in-third-person vs avoidance |
| **Response to conflict** | Escalate / deflect with a joke / go quiet / apologize |

Example — same information, four characters:

```
BLUNT:       "It's broken. Buy a new one."
ANXIOUS:     "Um... I think maybe it might be broken? Sorry, I'm not sure."
FORMAL:      "I'm afraid it appears to be beyond repair."
CHAOTIC:     "Dead! Deceased! It has gone to be with its ancestors!"
```

## Archetypes: useful shorthand, dangerous as a destination

The medium runs on recognizable types (tsundere, kuudere, genki, ojou-sama,
onee-san, imouto, senpai, the deadpan best friend). They are *casting shorthand*
— they let a reader orient in thirty seconds. They are not characters.

**Good use:** establish the type in scene 1, then spend the route showing the
person underneath it and why the type exists as armor.

**Bad use:** the type IS the character for 20 hours, and the "depth" is a single
tragic backstory dump in chapter 9.

The strongest character writing in the medium's canon — *Clannad*'s Tomoyo and
Kotomi, *Steins;Gate*'s Kurisu, *Umineko*'s Beatrice, *Katawa Shoujo*'s Hanako —
works by making the archetype *load-bearing* to the psychology rather than
decorative.

### The tsundere problem specifically

The failure mode is: hostility with no cause, softness with no earning.

```
Bad (mood-swings, unmotivated):
    "I-it's not like I made this for you or anything, baka!"

Better (same beat, motivated):
    "I made too much. If you don't take it, it's just going in the bin."
    >
    She's already holding the box out. She made this at six in the morning.
    >
    "...It's going in the bin," she repeats, louder.
```

Second version: the tsundere logic is intact, but the *narration* supplies the
evidence of care, so the reader gets the joke instead of being told there is one.

## Rhythm: dialogue is a music problem

Vary box length deliberately. A page of same-length lines flattens into noise.

```
Flat:
    "I don't know what you want me to say."
    "I want you to say something honest."
    "I've been honest this entire time."
    "No, you've been quiet this entire time."

Shaped:
    "I don't know what you want me to say."
    "Something honest."
    "..."
    "...Anything, actually. I'd take anything."
    "I've been honest."
    "You've been *quiet*. They're not the same thing and you know it."
```

Tools:
- **The silence line.** A box with only `"..."` is a full beat and it is free.
  Use it. Do not overuse it (more than ~1 per 15 lines starts reading as filler).
- **The interrupt.** `"Wait, that's not—"` / `"It is."`
- **The overlap.** Two characters answering one question differently, back to back.
- **The non-answer.** Character responds to a question with an unrelated
  observation; it characterizes and it advances.

## Comedy wording

Most VNs are funnier than their reputation suggests, and comedy is what makes
the later tragedy land. Reliable structures:

**1. The boke/tsukkomi pair** (fool / straight-man). One character says something
absurd, the other reacts. This is the engine of most VN comedy.

```
AOI:  "So I've decided to become a professional ghost."
ME:   "That's not a job."
AOI:  "It's a *calling*."
ME:   "It's not a job."
```

**2. Escalation in threes.** Two normal, one absurd — and the absurd one lands on
its own box.

**3. The narration punchline.** Dialogue sets up, narration cuts down.

```
YUKI: "I have a plan."
      >
      In my experience, this sentence has a 0% survival rate.
```

**4. Deadpan understatement after a big event.**

```
      The building is on fire.
      >
      Well. That's going to be a difficult email.
```

**5. Anticlimax.** Build tension across 4 boxes, resolve it in 3 words.

Comedy rule: **the punchline goes at the end of the box, and the box ends.** Do
not put anything after the punchline. Click is the rimshot.

## Dialogue that shouldn't exist

Cut or rewrite these on sight:

- **"As you know, Bob."** Characters explaining things both already know.
  Fix: have someone who genuinely doesn't know ask, or move it to narration, or
  cut it and trust the reader.
- **Greeting rituals.** "Hello." "Hello." "How are you?" "Fine, and you?"
  Start the scene at the first interesting line.
- **Logistics.** Walking, doorways, sitting down, ordering food — unless the
  logistics ARE the scene (see *VA-11 Hall-A*, where they are).
- **Agreement chains.** Three characters saying yes in a row. One agrees, one
  complicates.
- **Repeating what just happened.** The reader was there.

## Silence, hesitation, and typographic breath

Conventions that read as natural in the medium:

```
"..."                 Full silent beat / refusal to answer
"......"              Longer, heavier (length scales with weight)
"I—"                  Hard interrupt (em dash)
"I... I don't..."     Struggling to speak (ellipses inside the line)
"I'm *fine*."         Stress (engine-dependent; italics or bold)
"Ah—"                 Reaction sound
"...Huh."             Processing
```

**Keep the ellipsis discipline.** Japanese VNs use `……` liberally; English prose
starts to look mumbly past a certain density. If more than one line in four
contains an ellipsis, you're hedging, not characterizing.
