alias rm="rm -i"
alias py="python"
alias dc="docker compose"
alias ld='lazydocker'

function make-release { git flow release start -F "$1" && git flow release finish -F -D -p -m "$1" ;}
