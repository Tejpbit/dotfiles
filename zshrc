export ZSH="$HOME/dotfiles/oh-my-zsh"

zstyle ':completion:*' special-dirs true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [[ -z "$ZSH_THEME" ]]
then
	ZSH_THEME="gallifrey"
fi

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/dotfiles/my-zsh

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git archlinux zsh-syntax-highlighting)

# ------------------------------------------------------------------------------
# -- OS specific setup
# OS X setup
if [[ `uname` = "Darwin" ]]; then
	plugins=(git osx zsh-syntax-highlighting)
fi
# Arch setup
if [[ `uname` = "Linux" ]]; then
	plugins=(git archlinux zsh-syntax-highlighting z)
        alias reboot="~/dotfiles/bin/reboot.sh"
fi
source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

alias irkk="ssh cantina -t irkk"
alias i="ssh cantina -t irkk"
alias weather="curl http://wttr.in/gothenburg"
alias vim="nvim"
alias gi="git ignore"
alias path="echo $PATH | tr ':' '\n'"
alias netswitch="sudo netctl-auto switch-to"
alias lock="~/dotfiles/mylock.sh"

export EDITOR=nvim


# added by travis gem
[ -f /home/tejp/.travis/travis.sh ] && source /home/tejp/.travis/travis.sh
