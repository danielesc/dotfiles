setopt inc_append_history
export THEME_MODE="DARK_MODE"

if [ -f ~/.env_vars ]; then
    source ~/.env_vars
fi

# ALIASES CHIDOS

## Edits
alias v='nvim .'
alias editzsh='nvim ~/dotfiles/zsh/.zshrc'
alias editnvim='nvim ~/dotfiles/nvim/.config/nvim/init.lua';
alias edittmux='nvim ~/dotfiles/tmux/.tmux.conf';

## change ls to eza
alias ls='eza --color=always --group-directories-first --icons'
alias ll='eza -la --icons --octal-permissions --group-directories-first'
alias l='eza -bGF --header --git --color=always --group-directories-first --icons'
alias llm='eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons' 
alias la='eza --long --all --group --group-directories-first'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'
alias lS='eza -1 --color=always --group-directories-first --icons'
alias lt='eza --tree --level=2 --color=always --group-directories-first --icons'
alias l.="eza -a | grep -E '^\.'"

#replace cat with bat
alias cat='bat'

## Work folder cds
alias wapi='cd ~/work/api'
alias wfe='cd ~/work/fe'
alias wbes='cd ~/work/back-end-shared'
alias dotfiles='cd ~/dotfiles'

## Open directly in nvim
alias xwapi='nvim ~/work/api'
alias xwfe='nvim ~/work/fe'
alias xwbes='nvim ~/work/backend-shared'
alias xdotfiles='nvim ~/dotfiles'

alias c='clear'
alias zshconfig='nvim ~/dotfiles/zsh/.zshrc'
alias sourcezsh='source ~/.zshrc'
alias lzg='lazygit'

# CHANGE THEME
alias toggle_theme='source ./toggleMode.sh'
alias current_theme='echo "$THEME_MODE"'

# zsh plugins
if [ "$(uname)" = "Darwin" ]; then
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "linux"
fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#Variables
export EDITOR=nvim


eval "$(starship init zsh)"

if [ -f ~/.zshrc-extensions ]; then
    echo "Adding extensions"
    source ~/.zshrc-extensions
fi

autoload -U compinit && compinit
