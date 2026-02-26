#!/usr/bin/env bash
set -euo pipefail

TOC_FILE="${TOC_FILE:-ElvUI_Enhanced.toc}"
VERSION_URL="${WOW_UI_VERSION_URL:-https://raw.githubusercontent.com/Gethe/wow-ui-source/live/version.txt}"

if [[ ! -f "${TOC_FILE}" ]]; then
  echo "TOC file not found: ${TOC_FILE}" >&2
  exit 1
fi

version_raw="$(curl -fsSL "${VERSION_URL}" | tr -d '\r\n')"
if [[ ! "${version_raw}" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)\.[0-9]+$ ]]; then
  echo "Unexpected version format from ${VERSION_URL}: ${version_raw}" >&2
  exit 1
fi

major="${BASH_REMATCH[1]}"
minor="${BASH_REMATCH[2]}"
patch="${BASH_REMATCH[3]}"
new_interface="$(printf '%d%02d%02d' "${major}" "${minor}" "${patch}")"

current_interface="$(awk -F': *' '/^## Interface:/{gsub(/\r/, "", $2); print $2; exit}' "${TOC_FILE}")"
if [[ -z "${current_interface}" ]]; then
  echo "Could not read current interface value from ${TOC_FILE}" >&2
  exit 1
fi

changed=false
if [[ "${current_interface}" != "${new_interface}" ]]; then
  sed -i -E "s/^## Interface:[[:space:]]*[0-9]+/## Interface: ${new_interface}/" "${TOC_FILE}"
  changed=true
fi

echo "version_raw=${version_raw}"
echo "current_interface=${current_interface}"
echo "new_interface=${new_interface}"
echo "changed=${changed}"

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  {
    echo "version_raw=${version_raw}"
    echo "current_interface=${current_interface}"
    echo "new_interface=${new_interface}"
    echo "changed=${changed}"
  } >> "${GITHUB_OUTPUT}"
fi
