#!/usr/bin/env sh
# -*- coding: utf-8 -*-

install_asdf() {
    echo "Downloading asdf..."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
}

install_zplug_plugins() {
    # Install Zplug
    echo "Installing Zplug..."
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

    # Downloading plugins with Zplug
    echo "Downloading zsh plugins..."
    zplug "zsh-users/zsh-syntax-highlighting", defer:2
    zplug "zsh-users/zsh-autosuggestions"
    zplug "MichaelAquilina/zsh-autoswitch-virtualenv"

    # Downloading spaceship prompt with Zplug
    echo "Downloading spaceship..."
    zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

    # Installing all Zplug items
    zplug install
}

copy_zsh_configurations() {
    echo "Copying .zshrc file..."
    cp .zshrc "$HOME/.zshrc"
    . "$HOME/.zshrc"
}

main() {
    install_asdf
    install_zplug_plugins
    copy_zsh_configurations
}

main
