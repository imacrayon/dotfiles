#
# User configuration sourced by interactive shells
#

export DOTFILES=$HOME/.dotfiles

# Define zim location
export ZIM_HOME=$HOME/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

source $DOTFILES/path.zsh
source $DOTFILES/alias.zsh
