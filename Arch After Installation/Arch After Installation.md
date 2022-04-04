# Bootable Disk
[Bootable Windows USB Drive](https://www.youtube.com/watch?v=pf6g0VHVWkQ)
[Onetransistor](https://www.onetransistor.eu/2014/09/make-bootable-windows-usb-from-ubuntu.html)

---
# Kernel Missing Modules
paru mkinitcpio-firmware
paru aic94xx-firmware
paru wd719x-firmware

---
# Install Everything
git clone https://aur.archlinux.org/paru.git
paru lf ttf-unifont polybar siji-git jmtpfs picom-git conky

---
## Pacman Packages
sudo pacman -S i3 xorg xorg-xinit zsh zsh-completions  libmtp mtpfs gmtp gvfs-gphoto2 gvfs-mtp thunar thunar-archive-plugin thunar-volman ffmpegthumbnailer tumbler raw-thumbnailer xorg-fonts-misc ttf-jetbrains-mono ttf-roboto dunst

---
# AUR Helper (Paru)
git clone https://aur.archlinux.org/paru.git

---
# WM
## i3
sudo pacman -S i3 xorg xorg-xinit
## Polybar
paru polybar
sudo pacman -S xorg-fonts-misc
paru siji-git
paru ttf-unifont

---
# File Manager (lf)
paru lf
## Thunar
sudo pacman -S thunar thunar-archive-plugin thunar-volman ffmpegthumbnailer tumbler raw-thumbnailer

---
# File Transfer
sudo pacman -S libmtp mtpfs gmtp gvfs-gphoto2 gvfs-mtp
paru jmtpfs

---
# ZSH
p -S zsh zsh-completions
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

---
# Picom
paru picom-git

---
# Conky
paru conky

---
# Dunst
sudo pacman -S dunst
