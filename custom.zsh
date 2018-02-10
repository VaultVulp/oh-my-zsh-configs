ZSH_THEME="pure"
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if hash dircolors 2>/dev/null; then
    eval `dircolors $ZSH_CUSTOM/dircolors.256dark`
fi

autoload -U compinit && compinit

PURE_PROMPT_SYMBOL=">"
PURE_GIT_DOWN_ARROW="↓"
PURE_GIT_UP_ARROW="↑"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history battery time)

if hash pipenv 2>/dev/null; then
    source <(pipenv --completion)
fi
