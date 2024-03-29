if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# to get rid of the compdef command not found error
# (dunno why it even appears with oh-my-zsh)
# https://apple.stackexchange.com/questions/296477/my-command-line-says-complete13-command-not-found-compdef
autoload -Uz compinit
compinit

# source gromacs
source /usr/local/gromacs/bin/GMXRC

alias grace="ssh ia253@grace.hpc.yale.edu"

alias vi="nvim"

alias g_cp="/usr/local/Cellar/coreutils/9.2/bin/gcp"
alias blender="/Applications/Blender.app/Contents/MacOS/Blender"

### BEGIN ATSAS Installer ###
export ATSAS=/Users/iremaltan/ATSAS-3.0.4-2
export PATH=$PATH:$ATSAS/bin
### END ATSAS Installer ###

export PATH=$PATH:/usr/local/

export PATH=$PATH:/Users/iremaltan/clustalo/bin/

export PATH=$PATH:/Users/iremaltan/samtools/bin

# Path to your oh-my-zsh installation.
export ZSH="/Users/iremaltan/.dotfiles/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LD_LIBRARY_PATH="/Library/Developer/CommandLineTools/usr/lib/:$LD_LIBRARY_PATH"

