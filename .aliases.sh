#
# ~/.aliases.sh

# git
alias gs='git status'
alias gpush='git push'
alias gpull='git pull'
alias glog='git log'
alias ga='git add'
alias gc='git commit -m'
alias ginit='git init && git checkout -b main'
gz() {
    git add .
    git commit -m "$1"
    git pull
    git push 
}
clone() {
    # performs "git clone" into correct location in URL directory structure
    # currently supports SSH, HTTP, and HTTPS URLs

    TARGET_DIR=$1
    # Remove http, s, ://, .git
    TARGET_DIR=${TARGET_DIR#http}
    TARGET_DIR=${TARGET_DIR#s}
    TARGET_DIR=${TARGET_DIR#://}
    TARGET_DIR=${TARGET_DIR%.git}
    # Reformat SSH URL
    TARGET_DIR=${TARGET_DIR#*@}
    TARGET_DIR=${TARGET_DIR/://}
    # git clone
    TARGET_DIR="$HOME/Projects/$TARGET_DIR"  # edit this line to match your preferences
    git clone $1 $TARGET_DIR
    cd $TARGET_DIR
}

# file aliases
alias lisa='ls -lisah'
mkcd() {
    mkdir -p "$1" && cd "$1"
}
qcd() {
    # quickly cd into any project in the URL directory structure
    # expects param in format "project -- domain/user"
    cd ~/Projects/${1#*$'\U2002--\U2002'}/${1%$'\U2002--\U2002'*}
}
_qcd_completions() {
    # searches projects in ~/Projects/domain/user/project
    # returns param in format "project -- domain/user"
    for DOMAIN in $(ls ~/Projects); do
        for USER in $(ls ~/Projects/$DOMAIN); do
            for PROJECT in $(ls ~/Projects/$DOMAIN/$USER); do
                COMPREPLY+=($PROJECT$'\U2002--\U2002'$DOMAIN/$USER)
            done
        done
    done
}
complete -F _qcd_completions qcd

# python
alias py='python3'
alias pip='pip3'
alias activate='source env/bin/activate'
alias virtualenv='python3 -m virtualenv'
alias freeze='pip freeze > requirements.txt'

# go projects
alias opinder='cd ~/go/src/github.com/wpbdry/opinder_backend'

# docker
alias up='docker-compose up -d'
alias down='docker-compose down'

# psql
alias psql='/Library/PostgreSQL/12/bin/psql'

# servers
alias capetown='ssh wpbdry@capetown.phiture.com'
alias toaster='ssh wpbdry@toaster.phiture.com'