sudo dnf update

#rpm fusion
sudo rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install curl tmux wget btop htop ranger openssh p7zip gnupg2 \
    ufw nmap putty less rsync unrar zsh xorg-xwayland bash-completion bat  \
    vlc libreoffice firefox ffmpeg yt-dlp cool-retro-term \
    tilix sshfs xdg-desktop-portal bluez wine google-noto-sans-cjk-vf-fonts google-noto-color-emoji-fonts \
    VirtualBox akmod-VirtualBox \
    dnsmasq ansible audacious blender gimp gmic-gimp inkscape tree  \
    adobe-source-code-pro-fonts google-droid-sans-mono-fonts cascadia-code-fonts ibm-plex-mono-fonts jetbrains-mono-fonts \
    terminus-fonts

sudo dnf -y groupinstall "Development Tools"

#docker
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf config-manager --set-enabled docker-ce-test
sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

#vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf -y install code

#nvm
/usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
/usr/bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh)"
