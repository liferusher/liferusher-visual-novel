# Route Outline

Planning grid for branching structure. Fill before writing; update as you write.

---

## Structure type

- [ ] Kinetic (no branches)
- [ ] Gauntlet (linear trunk + local branches)
- [ ] Common route → character routes
- [ ] Hub and spoke
- [ ] Convergent (all routes required, true route gated)

**Why this structure suits this story:**

**Estimated total box count:**
**Estimated common-route share:**  (target: under ~40% for branch-heavy VNs)

---

## Route map

```
            [COMMON ROUTE]
                  |
        +---------+---------+
        |         |         |
     ROUTE A   ROUTE B   ROUTE C
        |         |         |
      ends      ends      ends
```

---

## Common route

| # | Scene | Location | Job | Seeds for route | Turn |
|---|---|---|---|---|---|
| 1 | | | | | |
| 2 | | | | | |

**Every common-route scene should seed at least one route.** If a scene seeds
none, it's paying rent with comedy or character alone — make sure it's good
enough to.

---

## Route: ______

- **Heroine / focus character:**
- **The route's question:**
- **What the protagonist learns:**
- **What it costs:**
- **Motif that recurs from the common route, with new meaning:**

| # | Scene | Job | Turn | Flags |
|---|---|---|---|---|
| 1 | | | | |

**Endings:**

| Ending | Type | Condition | The image it ends on |
|---|---|---|---|
| | Good / Normal / Bad / True | | |

---

## Flag map

Single source of truth. Every flag, everywhere it's touched.

| Flag | Type | Set in | Read in | Default | Notes |
|---|---|---|---|---|---|
| `yuki_trust` | int 0–5 | Ch1 s3, Ch2 s1 | Ch4 branch | 0 | Gate for Yuki route at ≥3 |

---

## Choice inventory

| Scene | Choice | Job | Branches | Genuinely different text after? |
|---|---|---|---|---|
| | | | | |

**Any row with "no" in the last column is a fake choice.** Fix or cut.

---

## Reachability audit

- [ ] Every route reachable from a fresh save
- [ ] Every ending reachable
- [ ] True route gate is clear to a player who isn't reading a guide
- [ ] No flag set but never read
- [ ] No flag read but never set
- [ ] Playtest: one full run per route, from scratch
