## dependencies

    pip install pynvim
    pip install jedi

    brew install neovim
    brew install stow

## properly stowing things
(Assumes the contents of this repo are in a folder in the user's home folder)

    cd ~/.dotfiles
    stow nano
    stow vim
    stow --target=~/.config/nvim nvim
    stow zsh
