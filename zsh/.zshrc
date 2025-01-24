if [ -f ~/.env_vars ]; then
    source ~/.env_vars
fi

# ALIASES CHIDOS
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

# zsh plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Variables
export EDITOR=nvim

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


eval "$(starship init zsh)"
