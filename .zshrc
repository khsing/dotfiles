#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# put several
if [[ -f ~/.zextra ]]; then
  source ~/.zextra
fi

if [[ -f ~/.zalias ]]; then
  source ~/.zalias
fi
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/khsing/.sdkman"
[[ -s "/Users/khsing/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/khsing/.sdkman/bin/sdkman-init.sh"
