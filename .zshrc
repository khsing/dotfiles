export ZSH=$HOME/.oh-my-zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"
# ZSH_TMUX_AUTOSTART="true"
plugins=(git npm ssh-agent tmux)
source $ZSH/oh-my-zsh.sh

# put several
if [[ -f ~/.zextra ]]; then
  source ~/.zextra
fi

# Customize to your needs...
if [[ -f ~/.aliases ]]; then
  source ~/.aliases
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=$HOME/.sdkman
[[ -s "/Users/khsing/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/khsing/.sdkman/bin/sdkman-init.sh"

# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#     tmux attach -t hack || tmux new -s hack; exit
#   fi
# fi
