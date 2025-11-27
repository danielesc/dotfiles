# SETUP

To link dotfiles run:
```bash
./setup.sh
```

## SETUP STOW

```bash
brew install stow
```

## Additional tools

### ZSH plugins

#### Autosuggestions

https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

```bash
brew install zsh-autosuggestions

## ad to .zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

#### Syntax Highlighting

https://github.com/zsh-users/zsh-syntax-highlighting

```bash
brew install zsh-syntax-highlighting

## add to .zsh to MAC os
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
#### zsh-history-substring-search

https://github.com/zsh-users/zsh-history-substring-search

NOTE: has to be after syntax hihglight

```bash
brew install zsh-history-substring-search
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
```

### Eza
Better ls

[Github](https://github.com/aristocratos/btop)

```bash
#mac
brew install eza

```

### Glow
Renders markdown in the terminal

[Github](https://github.com/aristocratos/btop)
```bash
brew install glow
```

### BTOP

Better top for monitoring stuffs

[Github](https://github.com/aristocratos/btop)

```bash
brew install btop
```

### RIPGREP

[Github](https://github.com/BurntSushi/ripgrep#installation)

```bash
brew install ripgrep
```

### BAT
Better CAT

[Github](https://github.com/sharkdp/bat)

```
brew install bat
```



## TMUX
install tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
