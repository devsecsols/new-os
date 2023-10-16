#!/bin/bash

# Mount all external hard drives
sudo mount -a

# Change directory to system's own Downloads folder
cd ~/Downloads

# Remove Firefox Snap
sudo snap remove firefox

# Install Firefox ESR
wget "https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=linux64&lang=en-US" -O firefox-esr.tar.bz2
tar xjf firefox-esr.tar.bz2
sudo mv firefox /opt/firefox-esr
sudo ln -s /opt/firefox-esr/firefox /usr/bin/firefox-esr

# Install ProtonVPN
wget "https://protonvpn.com/download/protonvpn-stable-release.deb" -O protonvpn.deb
sudo dpkg -i protonvpn.deb
sudo apt-get install -f

# Install Yubico Authenticator
sudo add-apt-repository ppa:yubico/stable
sudo apt-get update
sudo apt-get install yubioath-desktop

# Install Signal Desktop
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Install KeePassXC (non-snap)
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt-get update
sudo apt-get install keepassxc

# Install Net-tools
sudo apt-get install net-tools

# Install Nextcloud Client
sudo add-apt-repository ppa:nextcloud-devs/client
sudo apt-get update
sudo apt-get install nextcloud-client

# Install Zsh and Oh-My-Zsh
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Change GNOME Terminal keybindings
dconf write /org/gnome/terminal/legacy/keybindings/copy "'<Primary>c'"
dconf write /org/gnome/terminal/legacy/keybindings/paste "'<Primary>v'"
dconf write /org/gnome/terminal/legacy/keybindings/select-all "'<Primary>a'"
dconf write /org/gnome/terminal/legacy/keybindings/cut "'<Primary>x'"

# Validate all steps
# Manual validation is required.
