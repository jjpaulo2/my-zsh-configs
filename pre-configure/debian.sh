#!/usr/bin/env sh
# -*- coding: utf-8 -*-

install_dependencies() {
    apt update -y;
    apt install git zsh curl -y;
}

install_oh_my_zsh() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
}

main() {

    if install_dependencies; then
        install_oh_my_zsh;
    fi
    
}

main;
