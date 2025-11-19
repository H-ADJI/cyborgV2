#!/bin/bash

sudo --validate
while read package; do
    gum log -l info "[START] Installing $package"
    yay -Sq --noconfirm --noprogressbar --needed --disable-download-timeout "$package" >>~/yay.log 2>&1
    gum log -l info "[DONE] Installing $package"
done <~/cyborgV2/setup/arch/other.txt

gum log -l info "[START] installing multiple uv python versions"
py_versions=(
    "3.12"
    "3.11"
    "3.10"
    "3.9"
)
uv python install "${py_versions[@]}"
gum log -l info "[DONE] Installing multiple uv python versions"

gum log -l info "[START] Spotify file permissions"
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
gum log -l info "[DONE] Spotify file permissions"

gum log -l info "[START] Change shell to use ZSH"
chsh -s "$(grep -E 'zsh$' /etc/shells | head -n1)"
zsh
gum log "[DONE] Change shell to use ZSH"

gum log -l info "[START] Spicetify apply"
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/spicetify/marketplace/main/resources/install.sh | sh
spicetify backup apply
spicetify update
spicetify apply
gum log -l info "[DONE] Spicetify apply"
