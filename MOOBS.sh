#!/usr/bin/env bash

# Michael's Overly Opinionated Bootstrapping Script (MOOBS)
# by Michael Auderer <mike@silverstone.io>
# License: WTFPL

# Add necessary repositories
dnf copr enable gregw/i3desktop

# Install everything
dnf install -y i3-gaps rofi nano vim google-chrome ranger w3m calcurse compton \
feh arandr i3blocks i3lock rxvt-unicode scrot unar

# Install python packages
pip3 install pywal

# Download fonts
cd /usr/share/fonts
mkdir hack && cd hack
FONT_PATH=https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack
wget $FONT_PATH/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf?raw=true
wget $FONT_PATH/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true
wget $FONT_PATH/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf?raw=true
wget $FONT_PATH/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete%20Mono.ttf?raw=true
wget $FONT_PATH/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
wget $FONT_PATH/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete%20Mono.ttf?raw=true
wget $FONT_PATH/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
wget $FONT_PATH/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono.ttf?raw=true

# Regenerate font cache
fc-cache -f -v


