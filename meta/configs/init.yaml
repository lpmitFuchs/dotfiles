#!/bin/bash

install-yay () {
  sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git ~/yay && cd ~/yay && makepkg -si
}

install-settings () {
  yay -S --noconfirm \
    bluez \
    bluez-utils \
    blueberry \
    network-manager-applet \
    pulseaudio \
    pavucontrol \
    fwupd \
    nwg-look \
    update-grub
}

install-nvidia () {
  yay -S --noconfirm --needed \
    nvidia-dkms \
    nvidia-utils \
    lib32-nvidia-utils \
    nvidia-settings \
    vulkan-icd-loader \
    vulkan-tools \
    lib32-vulkan-icd-loader
}

install-hypr () {
  yay -S --noconfirm \
    hyprpaper \
    wlogout \
    cliphist \
    rofi \
    xorg-xwayland \
    hyprland \
    waybar \
    rofi-wayland \
    alacritty \
    dunst \
    thunar \
    xdg-desktop-portal-hyprland \
    qt5-wayland \
    qt6-wayland \
    hyprlock \
    ttf-font-awesome \
    fastfetch \
    ttf-fira-sans \
    ttf-fira-code \
    ttf-firacode-nerd \
    fuse2 \
    gtk4 \
    libadwaita \
    jq \
    python-gobject
}

install-general () {
  yay -S --noconfirm \
   zsh \
   lsd \
   wget \
   unzip \
   gum \
   rsync \
   figlet \
   keyring \
   neofetch \
   btop \
   noto-fonts \
   noto-color-emoji-fontconfig \
   ttf-hack \
   ttf-meslo-nerd-font-powerlevel10k \
   telegram-desktop \
   spotify \
   meld \
   discord \
   joplin-appimage \
   rpi-imager \
   mkinitcpio-pkcs11 \
   yubico-authenticator \
   zoxide
}

install-office () {
  yay -S --noconfirm \
    evolution \
    libreoffice-fresh-de \
    chromium \
    flameshot-git
}

install-ops () {
  yay -S --noconfirm \
    whois \
    remmina \
    remmina-plugin-rdesktop \
    podman \
    cheese \
    terraform
}

install-noc () {
  yay -S --noconfirm \
    net-tools \
    gnu-netcat \
    mtr \
    whois \
    tcpdump \
    wireguard-tools
}

install-k8s () {
  yay -S --noconfirm \
    kubectl \
    kube-ps1 \
    openlens-bin \
    k9s \
    krew
}

install-dev () {
  yay -S --noconfirm \
    neovim \
    dbeaver \
    lazygit \
    miniconda3 \
    conda-zsh-completion
}

install-pip () {
  conda activate base; pip install \
    ansible \
    aws-cli \
    black
}

echo "install yay"
install-yay
echo "install settings"
install-settings
#install-nvidia
#install-hypr
echo "install general"
install-general
echo "install office"
install-office
echo "install extension"
install-extension
echo "install dev"
install-dev
echo "install k8s"
install-k8s
echo "install ops"
install-ops
echo "install noc"
install-noc
#install-pip
