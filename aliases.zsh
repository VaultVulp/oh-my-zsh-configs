alias rm="rm -i"
alias py="python"
alias dc="docker-compose"
alias ld='lazydocker'
alias budget="code \"${BUDGET_FOLDER}\""
alias blog='docker run --rm -it -p 5000:5000 --volume `pwd`:/blog vaultvulp/python-2.7-lektor:head'

function make-release { git flow release start -F "$1" && git flow release finish -F -D -p -m "$1" ;}
