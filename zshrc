export ZSH="$HOME/dotfiles/oh-my-zsh/"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [[ -z "$ZSH_THEME" ]]
then
	ZSH_THEME="tejp"
fi

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/dotfiles/my-zsh

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Add cabal bin path
export PATH="$HOME/Library/Haskell/bin:$PATH"

alias irkk="ssh cantina -t irkk"
function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}
