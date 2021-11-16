#!/bin/bash

while true; do
    clear && read -p "Would you like to enable autoupdates? Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf update && sudo dnf install dnf-automatic -y && sleep 1 && sudo sed -i '22 c\apply_updates = yes' /etc/dnf/automatic.conf && sudo systemctl enable dnf-automatic.timer && sudo systemctl start dnf-automatic.timer && sudo systemctl enable dnf-automatic-install.timer && sudo systemctl start dnf-automatic-install.timer && echo  'max_parallel_downloads=20' >>  /etc/dnf/dnf.conf; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install a Brave, Chromium, or neither?  Please type \"B\" for Brave, \"C\" for Chromium, or \"S\" for neither and to skip.

>  " yns
    case $yns in
        [B]* ) sudo dnf install dnf-plugins-core -y && sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ && sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && sudo dnf install brave-browser -y; break;;
        [C]* ) sudo dnf install chromium -y; break;;
        [S]* ) break;;
        * ) clear && echo "Please type \"B\" for Brave, \"C\" for Chromium, or \"S\" for neither and to skip.";;
    esac
done

while true; do
    clear && read -p "Would you like to enable RPM Fusion Free and NonFree?  Accepting this is crucial to installing things like Nvidia drivers.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y && sudo dnf -y update; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install NVidia graphics drivers?  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install akmod-nvidia && sudo dnf install xorg-x11-drv-nvidia-cuda -y; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install a multimedia player?  Please type \"V\" for VLC, \"M\" for MPV, or \"S\" for neither and to skip.

>  " yns
    case $yns in
        [V]* ) sudo dnf install vlc -y; break;;
        [M]* ) sudo dnf install mpv -y; break;;
        [S]* ) break;;
        * ) clear && echo "Please type \"V\" for VLC, \"M\" for MPV, or \"S\" for neither and to skip.";;
    esac
done

while true; do
    clear && read -p "Would you like to block select radios?  This will disable WiFi and Bluetooth functionality.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo rfkill block all; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install FFmpeg?  This is important for select media's proper playback.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install ffmpeg; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install FFmpeg?  This is important for select media's proper playback.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install ffmpeg; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install Flatpak?  This will also automatically add the FlatHub repository to Flatpak and install FlatSeal.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.github.tchx84.Flatseal; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install Element?  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) flatpak install flathub im.riot.Riot; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install a mail client?  Please type \"K\" for KMail, \"T\" for Thunderbird, \"G\" for Geary, or \"S\" for neither and to skip.

>  " yns
    case $yns in
        [K]* ) sudo dnf install kmail; break;;
        [T]* ) sudo dnf install thunderbird; break;;
        [G]* ) sudo dnf install geary; break;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install Steam?  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install steam; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install GloriousEggroll's Proton version?  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install steam && nohup steam & disown && sleep 5 && pkill steam && cd ~/Downloads && wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/6.16-GE-1/Proton-6.16-GE-1.tar.gz && wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/6.16-GE-1/Proton-6.16-GE-1.sha512sum && sha512sum -c Proton-6.16-GE-1.sha512sum | grep FAILED && echo "Installation of ProtonGE could not be completed due to an invalid SHA512 signature." >> errorlog.txt && mkdir ~/.steam/root/compatibilitytools.d && tar -xf Proton-VERSION.tar.gz -C ~/.steam/root/compatibilitytools.d/; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install Lutris?  Lutris is an application that allows you to run games that are and aren't on Steam under WINE, Proton, or another compatibility layer.  It also serves as a hub to consolodate your entire game library.  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install lutris; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done

while true; do
    clear && read -p "Would you like to install UFW and disable incoming traffic?  Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.

>  " yns
    case $yns in
        [Y]* ) sudo dnf install ufw && sudo ufw default deny incoming && sudo ufw default allow outgoing && sudo ufw enable; break;;
        [N]* ) exit;;
        [S]* ) break;;
        * ) clear && echo "Please type \"Y\" to continue, \"S\" to skip, or \"N\" to exit.";;
    esac
done
