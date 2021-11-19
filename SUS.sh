#!/bin/bash

if [ "$(uname)" == "MINGW32_NT-10.0" ]; then
echo 'This shell script is not for windows'
fi

if [ "$(uname)" == "Darwin" ]; then
brew install vlc
brew install git
brew install figlet
brew install mpv
brew install wget
fi

if [ ! -f /usr/bin/vlc ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y vlc
        elif [ -f /etc/redhat-release ]; then
        sudo yum install vlc
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm vlc
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge vlc
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper install vlc
        elif [ -f /etc/fedora-release ]; then
        sudo dnf install vlc
        elif [ -f /etc/centos-release ]; then
        sudo yum install vlc
        elif [ -f /etc/nixos ]; then
        sudo nix-env -iA vlc
    fi
fi

if [ ! -f /usr/bin/git ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y git
        elif [ -f /etc/redhat-release ]; then
        sudo yum install git
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm git
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge git
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper install git
        elif [ -f /etc/fedora-release ]; then
        sudo dnf install git
        elif [ -f /etc/centos-release ]; then
        sudo yum install git
        elif [ -f /etc/nixos ]; then
        sudo nix-env -iA git
    fi
fi

if [ ! -f /usr/bin/figlet ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y figlet
        elif [ -f /etc/redhat-release ]; then
        sudo yum install figlet
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm figlet
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge figlet
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper install figlet
        elif [ -f /etc/fedora-release ]; then
        sudo dnf install figlet
        elif [ -f /etc/centos-release ]; then
        sudo yum install figlet
        elif [ -f /etc/nixos ]; then
        sudo nix-env -iA figlet
    fi
fi

if [ ! -f /usr/bin/mpv ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y mpv
        elif [ -f /etc/redhat-release ]; then
        sudo yum install mpv
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm mpv
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge mpv
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper install mpv
        elif [ -f /etc/fedora-release ]; then
        sudo dnf install mpv
        elif [ -f /etc/centos-release ]; then
        sudo yum install mpv
        elif [ -f /etc/nixos ]; then
        sudo nix-env -iA mpv
    fi
fi

git clone --depth=1 https://github.com/RickRollMaster101/SUS
vlc -f "./SUS/SUS.mp4" --play-and-exit
clear; figlet "SUS SUS AMOGUS"
rm -rf SUS

echo 'Do you want to uninstall figlet and vlc?'
echo '1. Yes'
echo '2. No'
echo '3. Only figlet'
echo '4. Only vlc'
echo '5. Want more sus?'
echo '6. More sus 2.0'
read -p 'Enter your choice: ' choice
if [ $choice -eq 1 ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get remove -y figlet
        sudo apt-get remove -y vlc
        elif [ -f /etc/redhat-release ]; then
        sudo yum remove figlet
        sudo yum remove vlc
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Rs --noconfirm figlet
        sudo pacman -Rs --noconfirm vlc
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge --depclean figlet
        sudo emerge --depclean vlc
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper remove figlet
        sudo zypper remove vlc
        elif [ -f /etc/fedora-release ]; then
        sudo dnf remove figlet
        sudo dnf remove vlc
        elif [ -f /etc/centos-release ]; then
        sudo yum remove figlet
        sudo yum remove vlc
        elif [ -f /etc/nixos ]; then
        sudo nix-env -e figlet
        sudo nix-env -e vlc
        elif [ "$(uname)" == "Darwin" ]; then
        brew uninstall figlet
        brew uninstall vlc
    fi
    clear
fi

if [ $choice -eq 2 ]; then
    clear
    exit
fi

if [ $choice -eq 3 ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get remove -y figlet
        elif [ -f /etc/redhat-release ]; then
        sudo yum remove figlet
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Rs --noconfirm figlet
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge --depclean figlet
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper remove figlet
        elif [ -f /etc/fedora-release ]; then
        sudo dnf remove figlet
        elif [ -f /etc/centos-release ]; then
        sudo yum remove figlet
        elif [ -f /etc/nixos ]; then
        sudo nix-env -e figlet
        elif [ "$(uname)" == "Darwin" ]; then
        brew uninstall figlet
    fi
    clear
fi

if [ $choice -eq 4 ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get remove -y vlc
        elif [ -f /etc/redhat-release ]; then
        sudo yum remove vlc
        elif [ -f /etc/arch-release ]; then
        sudo pacman -Rs --noconfirm vlc
        elif [ -f /etc/gentoo-release ]; then
        sudo emerge --depclean vlc
        elif [ -f /etc/SuSE-release ]; then
        sudo zypper remove vlc
        elif [ -f /etc/fedora-release ]; then
        sudo dnf remove vlc
        elif [ -f /etc/centos-release ]; then
        sudo yum remove vlc
        elif [ -f /etc/nixos ]; then
        sudo nix-env -e vlc
        elif [ "$(uname)" == "Darwin" ]; then
        brew uninstall vlc
    fi
    clear
fi 

if [ $choice -eq 5 ]; then
    trap '' 2
    trap '' 1
    trap '' SIGINT
    trap '' SIGTSTP
    trap '' SIGQUIT
    trap '' SIGKILL
    trap '' SIGTERM
    trap '' SIGHUP
    trap '' SIGSTOP
    figlet "YOU ARE GETTING HACKED BY AMOGUS!!!!!!!"
    echo '(ctrl + c wont work btw)'
    sleep 1
    if [ -f /usr/bin/gsettings ]; then
        cd ~
        mkdir amogus
        cd amogus
        wget https://i.redd.it/k9gfa8ez6dy61.png
        gsettings set org.gnome.desktop.background picture-uri file:///home/`whoami`/Hacked/k9gfa8ez6dy61.png
        rm business-hacked.jpg
    else
        sleep 0.3
        echo 'WHY TF U ARENT ON GNOME!?'
    fi
    clear
    sleep 0.5
    figlet 'AMOGUS IS TAKING OVER YOUR PC!!!!!!!!'
    sleep 2
    clear
    figlet 'HAHHAHAAAA GET REKT'
    sleep 1
    clear
    figlet 'AMOGUS!!!!!!!'
fi

exit 0