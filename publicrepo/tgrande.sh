#!/bin/bash

# === Configuration ===
PRIV_REPO="https://github.com/Meinards15/minecraft.git"
PUB_REPO="https://github.com/Meinards15/mine-da-silva.git"
PUB_BRANCH="main"

cd "$(dirname "$0")" || exit

echo "Updating public folder with all server mods/configs..."

for server in */ ; do
    [ "$server" = "public/" ] && continue
    [ "$server" = "Jar/" ] && continue

    [ -d "$server/mods" ] && mkdir -p "public/$server/mods" && cp -r "$server/mods/" "public/$server/"
    [ -d "$server/configs" ] && mkdir -p "public/$server/configs" && cp -r "$server/configs/" "public/$server/"

done






echo "t grande"

