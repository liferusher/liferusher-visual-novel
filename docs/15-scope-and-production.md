# 15. Scope — The Thing That Actually Kills VNs

Most unfinished visual novels are not abandoned because the writing was bad.
They're abandoned because the writer designed a 40-hour epic as their first
project, hit hour six, and did the arithmetic.

This chapter is about not doing that.

## The arithmetic nobody does first

A rough conversion for planning:

| Unit | Approximate |
|---|---|
| 1 hour of reading | 10,000–15,000 words |
| 1 hour of reading | ~1,200–2,000 text boxes |
| 1 "scene" | 1,500–4,000 words |
| Commercial VN (*Clannad*-scale) | 500,000+ words, multi-year studio project |
| Mid-size indie VN | 60,000–150,000 words |
| Short commercial indie VN | 20,000–50,000 words |
| A demo / jam VN | 5,000–15,000 words |

For comparison: a typical adult novel is ~90,000 words. **A mid-size VN is two
to three novels.** With branching, the *written* wordcount exceeds the
*readable-in-one-run* wordcount by a factor of 2–4×.

Then the art:

| Asset | Realistic cost of time or money |
|---|---|
| Character sprite + ~6 expressions | days of work, or hundreds of currency units |
| Event CG | often 1–3 days each, or comparable commission cost |
| Background | cheaper if filtered photos; expensive if painted |
| Music track | licensable cheaply; original composition is not cheap |
| Full voice acting | per-line cost × thousands of lines |

**Every CG you write into the script is a real invoice.** This is why
professional VN writers mark CG requirements in the outline, not the draft.

## The advice

### Make your first VN two hours long

Not because ambition is bad. Because **finishing teaches you things that
planning cannot**, and you want to learn them on a small project.

A 2-hour VN is roughly:
- 25,000 words
- 3–4 characters with sprites
- 5–8 backgrounds
- 3–6 CGs
- one route, or a small branch near the end
- achievable by one person in months rather than years

Ship that. Then your 40-hour epic will be designed by someone who has actually
shipped a VN, which is a completely different designer.

### Write the ending early

Not last. Early. Ideally in the first month.

Reasons: it's the part you'll be too exhausted to do well at the end; it tells
you what the whole thing is about, which tightens everything before it; and a
finished ending makes the project feel real in a way an outline never does.

### Cut a route rather than shorten every route

When you're over scope, the instinct is to trim everything by 20%. That produces
five thin routes instead of three good ones. **Cut whole things.** Depth
survives; breadth is what you can afford to lose.

### Prototype the most expensive scene first

Whatever your ambitious set-piece is — the branching trial, the animated
sequence, the twelve-CG climax — build a rough version of it in month one. You
will learn either that it's feasible or that it isn't, and both answers are
worth having before you write 60,000 words leading up to it.

### Track box count, not word count

Word count is a novelist's metric. Boxes are the medium's actual unit, they
correlate with reading time far better, and counting them keeps you thinking in
beats.

```bash
# Rough box count for a Ren'Py project: count quoted dialogue/narration lines
grep -rhoE '^\s*([a-z_]+ )?"' game/ --include='*.rpy' | wc -l
```

### Keep a "cut" file, never delete

Scenes you cut go into `cut/`, not the bin. Two reasons: cutting is much easier
psychologically when it's filing rather than destroying, and about a third of cut
material gets reused somewhere better.

## A realistic first-project plan

| Phase | Output | Rough share of time |
|---|---|---|
| 1. Premise & cast | One paragraph. 3–4 voice sheets. | 5% |
| 2. Outline | Scene-goal grid (`docs/11`), ending written | 10% |
| 3. Vertical slice | ONE scene, in-engine, placeholder art, polished | 10% |
| 4. Draft | The whole script, ugly, finished | 35% |
| 5. Revision | The 9 passes in `docs/13` | 20% |
| 6. Art & audio | Real assets replacing placeholders | (parallel) |
| 7. Playtest | Five strangers, first hour, silent observation | 10% |
| 8. Polish & ship | Menus, tips, store page, the unproofread stuff | 10% |

Phase 3 is the one people skip and the one that saves the project.

## Working with artists (if you're not one)

- **Spec CGs in the outline, not the script.** Give the artist a list early, with
  composition notes, not a surprise at chapter 14.
- **Write to the sprite inventory you actually have.** If you have six
  expressions, don't write a beat that needs a seventh. Keep the list in the
  voice sheet (`templates/character-voice-sheet.md`).
- **Expression sets beat CG count** for emotional range, and cost far less. An
  extra expression is usually a better purchase than an extra CG.
- **Backgrounds are reusable; CGs are not.** Scenes set in existing locations are
  nearly free. Scenes needing a new location cost real money. Let that shape your
  outline — that's a constraint, not a compromise.

## Playtesting, specifically

Five people, first hour, and you say nothing. Write down:

- where they laughed
- where they skimmed or hit skip
- where they looked confused
- **where they stopped**

That last one is the only metric that matters for the first hour. Everything
else is a preference; stopping is a failure.

Don't fix what one person disliked. Fix what three people stumbled on.

## The one-line version

**Ship something small. The finished two-hour VN teaches you more than the
unfinished forty-hour one, and it's the only one anyone will ever read.**
