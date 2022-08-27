# Define Zsh home as Oh-My-Zsh home 
export ZSH="$HOME/.oh-my-zsh"

# Define Spaceship-prompt as theme
ZSH_THEME="spaceship"

# Oh-My-Zsh plugins
plugins=(
    git
    asdf
    dotenv
)

# Loading scripts
source ~/.zplug/init.zsh
source $ZSH/oh-my-zsh.sh

# Load Zplug plugins
zplug load