# Shell configuration
This repository contains my shell aliases.

## Setup
```shell
cd ~
git init && git checkout -b main
git remote add origin https://github.com/wpbdry/shell-configuration
git pull origin main
echo '\n. ~/.aliases.sh' >> .zshrc
```

### Note
Make sure you source `~/.aliases.sh` after you import any other autocompletions
in your shell rc file, since other imports can interfere with the autocompletion
of `qcd()`
