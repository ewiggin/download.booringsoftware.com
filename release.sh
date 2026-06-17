#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-}"

if [[ -z "$VERSION" ]]; then
  VERSION=$(cat version.txt | tr -d '[:space:]')
fi

# Accept either "desktop-v0.2.4" or "0.2.4"
if [[ "$VERSION" == desktop-v* ]]; then
  TAG="$VERSION"
  NUM="${VERSION#desktop-v}"
else
  NUM="$VERSION"
  TAG="desktop-v$NUM"
fi

APPIMAGE="public/Roller.Admin_${NUM}_amd64.AppImage"
DMG="public/Roller.Admin_${NUM}_aarch64.dmg"
MSI="public/Roller.Admin_${NUM}_x64_en-US.msi"

for f in "$APPIMAGE" "$DMG" "$MSI"; do
  if [[ ! -f "$f" ]]; then
    echo "Error: file not found: $f" >&2
    exit 1
  fi
done

echo "Creating release $TAG..."
gh release create "$TAG" "$APPIMAGE" "$DMG" "$MSI" --title "$TAG"

echo "$TAG" > version.txt
