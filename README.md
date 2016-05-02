# Yann Cardon's dotfiles

managed with [GNU Stow](https://www.gnu.org/software/stow)

- [fish](https://fishshell.com): proxy related functions, [fisherman](http://fisherman.sh) plug-ins manager
- git
- nano

usage:
```
# requires stow and fisherman (for fish shell)
yaourt stow
yaourt fisherman

# get dotfiles
cd ~
git clone <this repo>

# always launch stow from the dotfile directory
cd dotfiles
stow git
stow fish
...
```
