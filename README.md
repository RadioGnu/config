# RadioGnu's configuration
## Installation
```sh
#Install all packages in utilities
xargs (eo)pkg it < utilities

#base16 shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
