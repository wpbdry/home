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
    git add . && \
    git commit -m "$1" \
    && git push 
}

# file aliases
alias lisa='ls -lisah'
mkcd() {
    mkdir -p "$1" && cd "$1"
}

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