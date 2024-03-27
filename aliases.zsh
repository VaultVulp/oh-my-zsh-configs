alias rm="rm -i"
alias py="python"
alias dc="docker compose"
alias ld='lazydocker'

function make-release { git flow release start -F "$1" && git flow release finish -F -D -p -m "$1" ;}

alias work="timer 25m && osascript -e 'display notification \"☕\" with title \"Work Timer is up!\" subtitle \"Take a Break 😊\" sound name \"Glass\"'"
        
alias rest="timer 5m && osascript -e 'display notification \"☕\" with title \"Break is over!\" subtitle \"Get back to work 😬\" sound name \"Glass\"'"

alias setup-kernel='poetry run python -m ipykernel install --user --name=`basename $(pwd)`'