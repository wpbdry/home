# Shell configuration
This repository contains my shell aliases.

## Setup
```shell
cd ~
git init
git remote add origin https://wpbdry@github.com/wpbdry/shell-configuration
git pull
echo '\n. ~/.aliases.sh' >> .zshrc
```

### Note
Make sure you source `~/.aliases.sh` after you import any other autocompletions
in your shell rc file, since other imports can interfere with the autocompletion
of `qcd()`
