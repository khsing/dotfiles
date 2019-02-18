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

# put several
if [[ -f ~/.zextra ]]; then
  source ~/.zextra
fi

# Customize to your needs...
if [[ -f ~/.aliases ]]; then
  source ~/.aliases
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/khsing/.sdkman"
[[ -s "/Users/khsing/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/khsing/.sdkman/bin/sdkman-init.sh"
