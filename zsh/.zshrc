# ALIASES CHIDOS
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'

## Work folder cds
alias wapi='~/work/api'
alias wfe='~/work/fe'

## Open directly in nvim
alias nvim-wapi='nvim ~/work/api'
alias nvim-wfe='nvim ~/work/fe'


alias zshconfig='nvim ~/dotfiles/.zshrc'
alias sourcezsh='source ~/.zshrc'


eval "$(starship init zsh)"
