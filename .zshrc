# Define my environment variables
export ZSH="$HOME/.oh-my-zsh"

# Define Oh-My-Zsh theme
# ZSH_THEME="bira"

# Oh-My-Zsh plugins
plugins=(
    git
    asdf
    dotenv
)

# Plugins initializations
eval "$(starship init zsh)"

# Loading scripts
source $HOME/.zplug/init.zsh
source $ZSH/oh-my-zsh.sh

# Load Zplug plugins
zplug load
