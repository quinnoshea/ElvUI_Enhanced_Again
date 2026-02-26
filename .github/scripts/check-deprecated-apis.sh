#!/usr/bin/env bash
set -euo pipefail

fail=0

targets=("$@")
if [[ "${#targets[@]}" -eq 0 ]]; then
  targets=(modules libs ElvUI_Enhanced.lua)
fi

echo "Checking for known retail-incompatible API usage..."

if command -v rg >/dev/null 2>&1; then
  search_cmd() {
    rg -n "$1" "${targets[@]}" || true
  }
else
  search_cmd() {
    grep -R -nE -- "$1" "${targets[@]}" 2>/dev/null || true
  }
fi

# Hard-fail APIs removed from modern retail that should not be reintroduced.
readonly HARD_FAIL_PATTERNS=(
  'GetNumWorldPVPAreas\('
  'GetWorldPVPAreaInfo\('
  '\.skinstyle\b'
)

for pattern in "${HARD_FAIL_PATTERNS[@]}"; do
  if matches="$(search_cmd "${pattern}")" && [[ -n "${matches}" ]]; then
    echo "${matches}"
    echo "Found forbidden pattern: ${pattern}"
    fail=1
  fi
done

# Allow legacy spell API fallback only in approved compatibility locations.
mapfile -t spell_matches < <(search_cmd '\bGetSpellInfo\(')
for match in "${spell_matches[@]}"; do
  file="${match%%:*}"
  line_text="${match#*:*:}"

  if [[ "${line_text}" == *"C_Spell.GetSpellInfo("* ]]; then
    continue
  fi

  case "${file}" in
    modules/misc/misc.lua|modules/unitframes/healglow.lua|libs/LibRangeCheck-3.0/LibRangeCheck-3.0.lua)
      ;;
    *)
      echo "Disallowed GetSpellInfo usage: ${match}"
      fail=1
      ;;
  esac
done

if [[ "${fail}" -ne 0 ]]; then
  echo "Retail API guard failed."
  exit 1
fi

echo "Retail API guard passed."
