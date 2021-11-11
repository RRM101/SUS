if [ ! -f /usr/bin/vlc ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y vlc
        elif [ -f /etc/redhat-release ]; then
        sudo yum install vlc
        elif [ -f /etc/arch-release ]; then
        sudo pacman -S vlc
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
        elif [ "$(uname)" == "Darwin" ]; then
        brew install vlc
    fi
fi

if [ ! -f /usr/bin/git ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y git
        elif [ -f /etc/redhat-release ]; then
        sudo yum install git
        elif [ -f /etc/arch-release ]; then
        sudo pacman -S git
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
        elif [ "$(uname)" == "Darwin" ]; then
        brew install git
    fi
fi

if [ ! -f /usr/bin/figlet ]; then
    if [ -f /etc/debian_version ]; then
        sudo apt-get install -y figlet
        elif [ -f /etc/redhat-release ]; then
        sudo yum install figlet
        elif [ -f /etc/arch-release ]; then
        sudo pacman -S figlet
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
        elif [ "$(uname)" == "Darwin" ]; then
        brew install figlet
    fi
fi

git clone --depth=1 https://github.com/RickRollMaster101/SUS
vlc -f "./SUS/SUS.mp4" --play-and-exit
clear; figlet "SUS SUS AMOGUS"
rm -rf SUS
exit 0