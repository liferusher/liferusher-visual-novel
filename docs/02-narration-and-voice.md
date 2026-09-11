# 2. Narration and Voice

## Person and tense: the defaults and when to break them

**Default: first person, present tense.**

```
I push open the clubroom door.
Nobody's here. Of course nobody's here — it's Saturday.
```

Why it dominates: it matches the click-by-click "now" of the medium, it lets
interiority sit flush against dialogue with no gear change, and it makes the
player's hand on the mouse feel like the protagonist's hand on the door.

### The four workable modes

| Mode | Feel | Use when | Examples |
|---|---|---|---|
| 1st present | Immediate, intimate, reactive | Default. Romance, SOL, most things | *Clannad*, *Katawa Shoujo*, *DDLC* |
| 1st past | Retrospective, tinged with knowledge | Framed as a memory or confession; tragedy where the ending is already known | *Umineko* (in parts), many mystery VNs |
| 2nd person | Player-as-character, dreamlike or accusatory | Short-form, experimental, interactive fiction crossover | *Slay the Princess*, *Roadwarden*, twine-adjacent work |
| 3rd limited | Ensemble, cinematic, detached | Multi-protagonist stories, mysteries where you rotate POV | *Danganronpa* uses 1st, but many ensemble VNs go 3rd |

**Do not mix without a signal.** If you switch POV, mark it: a chapter break, a
name card, a font change, a background shift. Unsignaled POV drift is the #1
thing that makes readers say "the writing got confusing."

### Tense slippage (very common bug)

```
Bad:  I walk into the room. Yuki was sitting by the window.
Good: I walk into the room. Yuki is sitting by the window.
```

Exception that's actually correct: present-tense narration can dip into past for
genuinely prior events.

```
Fine: I walk into the room. Yuki is by the window, in the same seat she took
      on the first day of term.
```

## The narrator needs a personality

Compare, same event:

```
Flat (camera):
    The classroom was noisy. Students were talking. The teacher had not
    arrived yet.

Voiced (character):
    The classroom sounds like a beehive that's been kicked.
    Thirty-one people with nothing to say, all saying it at once.
    Hasegawa-sensei is late again. Shocking. Unprecedented.
```

The second tells you the narrator is sarcastic, socially fatigued, and counts
things. That's three characterization beats in the space where the first version
gave you zero.

**Techniques for voicing narration:**

1. **Opinion adjectives** — not "a tall boy" but "a boy tall enough to be
   annoying about it."
2. **Comparisons drawn from the character's world** — a cook compares things to
   food, a soldier to ordnance, a shut-in to games.
3. **Self-interruption** — `Which is fine. Totally fine. I'm fine.`
4. **Counting and precision as a tic** — `Four seconds of silence. Five.`
5. **Direct address to the reader** (use sparingly, sets a comedic/meta register)
6. **The deadpan restatement** — `So. A ghost. In my kitchen. On a Tuesday.`

## Interiority: the thing only VNs get for free

Narration lets you put the *unspoken* directly next to the *spoken*. This is your
sharpest tool. Use it for gap, not echo.

```
Echo (wasted):
    "I'm fine," she says.
    She says she's fine.

Gap (works):
    "I'm fine," she says.
    Her hand hasn't left the door handle since she came in.
```

```
Echo:
    "You're an idiot."
    She called me an idiot. That stung.

Gap:
    "You're an idiot."
    ...She's not wrong, but she could have waited until after I'd eaten.
```

**Rule of thumb: if the narration line could be deleted and nothing would be
lost, delete it.** VN drafts are typically 20–30% deletable narration.

## Monologue vs narration

- **Narration** reports and colors: `The rain hasn't let up all afternoon.`
- **Monologue** thinks: `(If it keeps up, she won't come.)`

Many engines render the protagonist's inner voice in parentheses, italics, or
with a distinct text color. Whatever convention you pick, be 100% consistent —
readers learn it in the first twenty minutes and will be confused forever if you
break it once.

Common conventions:
```
I walk home in the rain.                     <- narration
(She didn't say goodbye.)                    <- inner thought, parens
*She didn't say goodbye.*                    <- inner thought, italics
「……」                                        <- silence as a speech line
```

## Naming and address — where VN prose lives or dies

How characters refer to each other is compressed characterization. In Japanese
VNs this is honorifics; in English you have to rebuild the same information with
different tools.

| Relationship signal | JP tool | English equivalent that works |
|---|---|---|
| Formal distance | -san, surname | Full name, title, "Mr./Ms." |
| Warmth / familiarity | given name, -chan | Given name, nickname, shortened name |
| Deference | -senpai, -sensei | Title, or careful full-sentence politeness |
| Contempt / bluntness | no honorific, omae | Surname only, "you", pronoun-drop |
| Intimacy shift (big moment!) | dropping the honorific | Switching from "Tanaka" to "Rei" |

**The single most reliable romance beat in the medium:** the moment a character
changes what they call the protagonist. Set it up for 15 hours, pay it off in
one line, and readers will remember it forever.

```
        "...Thanks. Tanaka-kun."
        >
        Wait.
        >
        She's never used my name before.
```

If you're writing in English without honorifics, engineer an equivalent ladder
early so you have rungs to climb later.

## Narrator reliability

VNs do unreliable narration better than almost any medium because the *visuals*
can contradict the text, and because route structure lets you re-read the same
events with new information.

Techniques:
- Narration omits rather than lies (safest, most replayable)
- Narration describes something the sprite/CG plainly isn't
- A later route re-renders an earlier scene with one line changed
- The narrator refuses to look at something: `I don't look at the bed. I'm not
  going to look at the bed.`

*Umineko*, *Doki Doki Literature Club*, and *Higurashi* are the canonical study
texts here — each weaponizes reader trust in narration/UI differently.
