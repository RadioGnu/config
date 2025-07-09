# RadioGnu's configuration
## Installation

### Dot-bare
taken from [dotfiles](https://github.com/Siilwyn/my-dotfiles)

Cloning:
```sh
git clone --separate-git-dir=$HOME/.cfg git@github.com:RadioGnu/config.git cfg-tmp
rsync --recursive --verbose --exclude '.git' cfg-tmp/ $HOME/
rm --recursive cfg-tmp
```

Config:
```sh
config config status.showUntrackedFiles no
```

Afterwards it's just like the regular git command.

### syntax-highlighting
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
