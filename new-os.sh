#!/bin/bash

#Initial Ubuntu Configuration commands
sudo apt purge -y apport apport-symptoms popularity-contest ubuntu-report whoopsie
sudo apt autoremove -y
sudo apt update
sudo apt install -y build-essential dkms gcc make perl
sudo rcvboxadd setup
sudo snap remove --purge firefox
sudo add-apt-repository -y ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";'>
sudo apt install -y firefox --allow-downgrades
sudo apt install -y curl
pkill -f firefox

cp -R * ~/Downloads/new-os/My-ff-profile/*.default-release


# Change directory to Downloads
cd ~/Downloads

#Download Git stuff nw-os dolfer
wget http://www.example.com/path/to/bascr.txt 

cd new-os



#binshrc file
# Rename the file to .bashrc
mv new-os/bascr.txt ~/.bashrc_temp

# Move the current .bashrc to the Documents directory
mv ~/.bashrc ~/Documents/.bashrc_backup.txt

# Copy .bashrc_temp to the current directory as .bashrc
cp ~/.bashrc_temp ~/.bashrc

# Clean up the temporary file
rm ~/.bashrc_temp


#Firefox ESR
sudo apt update-------------------------------------------------------------------------------
Initial Ubuntu Configuration commands
-------------------------------------------------------------------------------
sudo apt purge -y apport
sudo apt remove -y popularity-contest
sudo apt autoremove -y

sudo apt install firefox-esr

#Tor Browser

sudo snap install chromium
sudo apt update
sudo apt install build-essential dh-python python3-all python3-stdeb python3-pyqt5 py>
git clone https://github.com/micahflee/torbrowser-launcher.git
cd torbrowser-launcher
./build_deb.sh
sudo dpkg -i deb_dist/torbrowser-launcher_*.deb
./torbrowser-launcher 
rm -rf torbrowser-launcher


#Others


sudo apt install -y vlc
sudo apt install -y ffmpeg
sudo apt install -y python3-pip
sudo pip install -U youtube-dl
sudo pip install -U yt-dlp
cd ~/Downloads/new-os
sudo apt install -y curl
curl -O https://inteltechniques.com/data/osintbook10/vm-files.zip
unzip vm-files.zip -d ~/Downloads/new-os
mkdir ~/Documents/scripts


# Network Configuration
sudo ip addr add 10.20.20.10/24 dev enp4s0
sudo ip link set enp4s0 up
sudo ip route add default via 10.20.20.1
sudo ip route add 10.20.4.0/24 via 10.20.2.1 dev enp4s0
sudo ip route add 10.20.5.4 via 10.20.2.1 dev enp4s0
sudo ip route add 10.51.2.0/24 via 10.20.2.1 dev enp4s0
sudo ip route add 10.78.60.0/24 via 10.20.2.1 dev enp4s0
sudo ip route add 10.78.60.10 via 10.20.2.1 dev enp4s0

# Mount Drives
sudo mkdir -p /media/jfmd_12T
sudo mkdir -p /media/jfmd_1T
sudo mount -L jfmd_12T /media/jfmd_12T
sudo mount -L jfmd_1T /media/jfmd_1T
echo 'LABEL=jfmd_12T /media/jfmd_12T ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo 'LABEL=jfmd_1T /media/jfmd_1T ext4 defaults 0 0' | sudo tee -a /etc/fstab

#Downlaod all
wget https://download.virtualbox.org/virtualbox/7.0.12/virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
wget https://download.virtualbox.org/virtualbox/7.0.12/Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack
wget https://launchpad.net/veracrypt/trunk/1.26.7/+download/veracrypt-1.26.7-setup.tar.bz2

# Install dconf-editor
sudo apt-get update
sudo apt-get install dconf-editor
sudo apt upgrade

# Install Proton VPN
sudo dpkg -i protonvpn-stable-release_1.0.3-2_all.deb
sudo apt-get update
sudo apt-get install proton-vpn-gnome-desktop
sudo apt install libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator

# Install VMware
git clone https://github.com/mkubecek/vmware-host-modules.git
cd vmware-host-modules
git checkout workstation-17.0.2
make
sudo make install
sudo modprobe -a vmw_vmci vmmon

# Install VirtualBox and Extension Pack
sudo apt update
sudo apt install virtualbox virtualbox-ext-pack -y
sudo apt update
sudo apt install -y build-essential dkms gcc make perl
sudo rcvboxadd setup
sudo dpkg -i virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack

# Install VeraCrypt
tar xvjf veracrypt-1.26.7-setup.tar.bz2
sudo ./veracrypt-1.26.7-setup-gui-x64

# Install Authy and Android Studio from Snap Store
sudo snap install authy --classic
sudo snap install android-studio --classic

# Install Standard Notes
sudo apt install standard-notes

# YubiKey Packages (replace with actual packages)
sudo add-apt-repository ppa:yubico/stable && sudo apt-get update
sudo apt-get install yubikey-manager

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

#Nivdia Drivers
sudo chmod +x NVIDIA-Linux-x86_64-525.105.17.run
sudo ./NVIDIA-Linux-x86_64-525.105.17.run

kernel 6.5.6
cd linux-6.5.8
make 
sudo make install

#metadata tool
#Metadata Tool Installation
sudo apt update
sudo apt install mat2 -y

#Bleachbit Installation
sudo apt install bleachbit

# Clamv Installation & Execution

sudo apt update
sudo apt install -y clamav clamav-daemon

sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl start clamav-freshclam

clamscan -r -i /
clamscan -r -i --remove=yes /

#scripts - Osint 
curl -O https://inteltechniques.com/data/osintbook10/vm-files.zip
unzip vm-files.zip -d ~/Desktop/
mkdir ~/Documents/scripts
mkdir ~/Documents/icons
cd ~/Desktop/vm-files/scripts
cp * ~/Documents/scripts
cd ~/Desktop/vm-files/icons
cp * ~/Documents/icons
cd ~/Desktop/vm-files/shortcuts
sudo cp * /usr/share/applications/
cd ~/Desktop
rm vm-files.zip


# End of script
