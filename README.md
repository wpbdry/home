# $HOME
This repository contains configuration files that I share across devices.

## Setup
```shell
cd ~
git init && git checkout -b main
git remote add origin https://github.com/wpbdry/shell-configuration
git pull origin main
echo '\n. ~/.aliases.sh' >> .zshrc

# If you have recently changed .gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
```

### Note
Make sure you source `~/.aliases.sh` after you import any other autocompletions
in your shell rc file, since other imports can interfere with the autocompletion
of `qcd()`

## Install missing software
```shell
# This is a list of programs required by this configuration
brew install pinentry-mac
brew install bat
```
