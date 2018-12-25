ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git docker zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

if hash dircolors 2>/dev/null; then
    eval `dircolors $ZSH_CUSTOM/dircolors.256dark`
fi

autoload -U compinit && compinit

PURE_PROMPT_SYMBOL=">"
PURE_GIT_DOWN_ARROW="↓"
PURE_GIT_UP_ARROW="↑"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history battery time)

source $ZSH_CUSTOM/z.sh