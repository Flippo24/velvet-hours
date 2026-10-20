#!/usr/bin/env bash
set -euo pipefail
if [[ $# -ne 2 ]]; then
  echo "Aufruf: $0 /pfad/zu/velvet-hours-v0.2 /pfad/zum/velvet-hours-git-checkout" >&2
  exit 2
fi
src="${1%/}/assets/reference/characters/v0.2"
repo="${2%/}"
[[ -f "$src/SHA256SUMS.txt" ]] || { echo "Quelle ohne Bildprüfsummen" >&2; exit 1; }
[[ -d "$repo/.git" ]] || { echo "Ziel ist kein Git-Checkout" >&2; exit 1; }
( cd "$src" && sha256sum -c SHA256SUMS.txt )
mkdir -p "$repo/assets/reference/characters/v0.2"
cp -v "$src"/*.png "$repo/assets/reference/characters/v0.2/"
cp -v "$src/SHA256SUMS.txt" "$repo/assets/reference/characters/v0.2/"
git -C "$repo" add assets/reference/characters/v0.2/
echo "50 Bilder staged. Nun: git -C '$repo' commit -m 'assets(v0.2): import 50 character PNGs'; git -C '$repo' push origin main"
