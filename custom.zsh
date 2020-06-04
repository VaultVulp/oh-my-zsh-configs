ZSH_THEME="powerlevel10k/powerlevel10k"

autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source $ZSH_CUSTOM/p10k.zsh