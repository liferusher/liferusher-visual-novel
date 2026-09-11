#!/usr/bin/env bash
# vn-lint.sh — prose linter for visual novel scripts.
#
# Runs the search-and-destroy patterns from docs/13-self-edit-checklist.md.
#
# IMPORTANT: this tool finds *candidates*, not errors. Every pattern here has
# legitimate uses (see the per-rule notes). A hit means "spend ten seconds
# looking at this line", not "this line is wrong". Do not chase zero.
#
# Usage:
#   tools/vn-lint.sh game/script.rpy
#   tools/vn-lint.sh game/            # recurses
#   tools/vn-lint.sh --only filter game/
#   tools/vn-lint.sh --quiet game/    # counts only, no line output
#
# Exit status is always 0. This is a review aid, not a CI gate.

set -uo pipefail

QUIET=0
ONLY=""
TARGETS=()

while [ $# -gt 0 ]; do
  case "$1" in
    --quiet|-q) QUIET=1; shift ;;
    --only)     ONLY="${2:-}"; shift 2 ;;
    -h|--help)  sed -n '2,20p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *)          TARGETS+=("$1"); shift ;;
  esac
done

if [ ${#TARGETS[@]} -eq 0 ]; then
  echo "usage: $0 [--quiet] [--only RULE] <file-or-dir>..." >&2
  exit 0
fi

if command -v rg >/dev/null 2>&1; then
  SEARCH() { rg --no-heading --line-number --color=never -i -e "$1" "${TARGETS[@]}" 2>/dev/null; }
else
  SEARCH() { grep -rnEi -e "$1" "${TARGETS[@]}" 2>/dev/null; }
fi

TOTAL=0

rule() {
  local name="$1" pattern="$2" note="$3"
  [ -n "$ONLY" ] && [ "$ONLY" != "$name" ] && return 0

  local hits count
  hits="$(SEARCH "$pattern")"
  count="$(printf '%s' "$hits" | grep -c . || true)"
  TOTAL=$((TOTAL + count))

  [ "$count" -eq 0 ] && return 0

  printf '\n\033[1m%s\033[0m  (%s hit%s)\n' "$name" "$count" "$([ "$count" = 1 ] || echo s)"
  printf '  \033[2m%s\033[0m\n' "$note"
  if [ "$QUIET" -eq 0 ]; then
    printf '%s\n' "$hits" | head -40 | sed 's/^/    /'
    [ "$count" -gt 40 ] && printf '    \033[2m... and %s more\033[0m\n' "$((count - 40))"
  fi
}

printf '\033[1mVN prose lint\033[0m — candidates, not errors. See docs/05 and docs/13.\n'

rule filter \
  '\b(I|he|she|they) (saw|heard|felt|noticed|realized|realised|watched|observed|sensed|found myself)\b' \
  'Filter words distance the reader. Keep only when the ACT of perceiving is the point.'

rule think-filter \
  '\b(I|he|she|they) (thought|wondered|decided|knew|understood|remembered)( that)?\b' \
  'In 1st-person interiority these are usually redundant — we are already in the head.'

rule intensifier \
  '\b(very|really|quite|rather|extremely|totally|literally|basically|somewhat|utterly)\b' \
  'Kill in NARRATION. Keep in DIALOGUE as character fingerprint.'

rule adverb-tag \
  '\b(said|asked|replied|answered|shouted|whispered|muttered|murmured) [a-z]+ly\b' \
  'The line or the sprite should carry this. Rewrite the line, not the tag.'

rule adverb-first \
  '(^|[.!?"] )(Suddenly|Slowly|Quickly|Quietly|Carefully|Gently|Immediately|Instantly|Abruptly),' \
  'Adverb-first is a translationese tic. Let short boxes supply the speed.'

rule purple \
  '\b(orbs|tresses|porcelain|cerulean|azure|alabaster|ivory skin|chiseled|ample bosom)\b' \
  'Elegant variation for body parts. Eyes are eyes. Hair is hair.'

rule throat-clearing \
  '\b(began to|started to|proceeded to|went on to|was able to|managed to)\b' \
  'Usually deletable. "began to walk" -> "walked".'

rule perception-hedge \
  '\b(could (see|hear|feel|smell|tell)|seemed to|appeared to|somehow|for some reason)\b' \
  'Hedging weakens the image. State the thing.'

rule emotion-naming \
  '\b(felt|was) (very |extremely |so )?(sad|happy|angry|scared|nervous|embarrassed|lonely|excited)\b' \
  'Prefer evidence over labels. Name the emotion flat ONLY after earning it.'

rule telling-the-reader \
  '\b(in that moment|little did (I|he|she|they)|unbeknownst to|it was then that)\b' \
  'Narrator stepping outside the moment to signpost. Almost always cuttable.'

rule as-you-know \
  '\b(as you know|as you are aware|as we all know|need I remind you)\b' \
  'Characters explaining what both already know. Move to TIPS, or give it to someone ignorant.'

rule calque \
  "\b(it (can'?t|cannot) be helped|as expected of|that person over there|what on earth)\b" \
  'Translationese. See docs/09.'

rule ellipsis-density \
  '\.\.\..*\.\.\.' \
  'Two or more ellipses in one line reads as sedated. One per line max; a bare "..." box is fine.'

rule exclamation-density \
  '!.*!' \
  'Two or more exclamation marks in one line. Check it is a character trait, not emphasis panic.'

rule interrobang \
  '(\?!|!\?){1}' \
  'Fine occasionally, exhausting in bulk. Count your uses.'

rule long-line \
  '^.{220,}$' \
  'Very long line — will overflow an ADV box. Check it in the engine and split.'

printf '\n\033[1m%s candidate%s total.\033[0m\n' "$TOTAL" "$([ "$TOTAL" = 1 ] || echo s)"
printf '\033[2mHits are prompts to look, not defects to eliminate. A clean run is not a goal.\033[0m\n'
exit 0
