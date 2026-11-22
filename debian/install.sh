sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get install -y ca-certificates curl gnupg lsb-release

sudo apt-get -y install curl tmux wget btop htop ranger openssh-server 7zip gnupg \
    ufw nmap putty less rsync unrar-free zsh xwayland bash-completion bat \
    qbittorrent \
    vlc libreoffice firefox-esr ffmpeg yt-dlp cool-retro-term \
    tilix sshfs xdg-desktop-portal bluez wine fonts-noto-cjk fonts-noto-color-emoji \
    dnsmasq ansible audacious blender gimp inkscape tree build-essential \
    fonts-droid-fallback fonts-cascadia-code fonts-ibm-plex fonts-jetbrains-mono \
    fonts-terminus

sudo apt-get -y install build-essential \
    neovim docker valgrind perf jdk8-openjdk kubectl r spyder nasm sfml ghc \
    base-devel git clang ncurses go rust dotnet-sdk dotnet-runtime aspnet-runtime idle3-tools

# Docker
sudo apt-get remove -y docker docker-engine docker.io containerd runc podman-docker
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker "$USER"

# VS Code
sudo curl -fsSL https://packages.microsoft.com/keys/microsoft.asc -o /etc/apt/keyrings/microsoft.asc
sudo chmod a+r /etc/apt/keyrings/microsoft.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/microsoft.asc] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
sudo apt-get update
sudo apt-get -y install code

#nvm
/usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
/usr/bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh)"
