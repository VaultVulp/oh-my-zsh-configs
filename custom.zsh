ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git docker docker-compose zsh-completions zsh-autosuggestions zsh-syntax-highlighting pipenv pyenv)

if hash dircolors 2>/dev/null; then
    eval `dircolors $ZSH_CUSTOM/dircolors.256dark`
fi

autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit

PURE_PROMPT_SYMBOL=">"
PURE_GIT_DOWN_ARROW="↓"
PURE_GIT_UP_ARROW="↑"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history battery time)

source $ZSH_CUSTOM/z.sh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
