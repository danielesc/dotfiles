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
alias ccat='bat'

## Work folder cds
alias wapi='~/work/api'
alias wfe='~/work/fe'
alias wbes='~/work/back-end-shared'
alias dotfiles='~/dotfiles'

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
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#Variables
export EDITOR=nvim

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


eval "$(starship init zsh)"

# bun completions
[ -s "/Users/sonatafy/.bun/_bun" ] && source "/Users/sonatafy/.bun/_bun"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sonatafy/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sonatafy/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sonatafy/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sonatafy/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/Users/sonatafy/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
