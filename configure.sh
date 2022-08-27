#!/usr/bin/env sh
# -*- coding: utf-8 -*-

install_zplug() {
    # Install Zplug
    echo "Installing Zplug...";
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh;
}

install_zplug_plugins() {
    echo "Installing zsh plugins...";

    # Downloading plugins with Zplug
    zplug "zsh-users/zsh-syntax-highlighting", defer:2;
    zplug "zsh-users/zsh-autosuggestions";
    zplug "MichaelAquilina/zsh-autoswitch-virtualenv";

    # Installing all Zplug items
    zplug install
}

install_asdf() {
    echo "Downloading asdf...";
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf;
}

install_asdf_plugins() {
    echo "Installing asdf plugins...";
    asdf plugin add python;
    asdf plugin add nodejs;
    asdf plugin add golang;
}

install_starship_prompt() {
    curl -sS https://starship.rs/install.sh | sh;
}

copy_zsh_configurations() {
    echo "Copying .zshrc file...";
    cp .zshrc "$HOME/.zshrc";
    source "$HOME/.zshrc";
}

main() {
    if install_zplug; then
        install_zplug_plugins;

        install_starship_prompt;
        copy_zsh_configurations;
        
        install_asdf;
        install_asdf_plugins;
    else
        echo "An error was caught when tryied to install Zplug.";
    fi

}

main;
