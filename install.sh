#!/usr/bin/env zsh
# -*- coding: utf-8 -*-

install_oh_my_zsh() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
}

install_asdf() {
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
}

test_echo() {
    echo "pombs"
}

install_zplug_plugins() {
    # Install Zplug
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

    # Installing plugins with Zplug
    zplug "zsh-users/zsh-syntax-highlighting", defer:2
    zplug "zsh-users/zsh-autosuggestions"
    zplug "MichaelAquilina/zsh-autoswitch-virtualenv"
}


main() {
    install_oh_my_zsh && test_echo
}

main
