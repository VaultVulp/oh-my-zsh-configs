ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git docker docker-compose zsh-completions zsh-autosuggestions zsh-syntax-highlighting pipenv pyenv z)

if hash dircolors 2>/dev/null; then
    eval `dircolors $ZSH_CUSTOM/dircolors.256dark`
fi

autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit

source $ZSH_CUSTOM/purepower.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
