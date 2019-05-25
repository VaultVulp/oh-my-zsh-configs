ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git docker docker-compose zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

if hash dircolors 2>/dev/null; then
    eval `dircolors $ZSH_CUSTOM/dircolors.256dark`
fi

autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi`

PURE_PROMPT_SYMBOL=">"
PURE_GIT_DOWN_ARROW="↓"
PURE_GIT_UP_ARROW="↑"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history battery time)

source $ZSH_CUSTOM/z.sh
