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


#Variables
export EDITOR=nvim


eval "$(starship init zsh)"
