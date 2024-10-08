export ZSH="$HOME/.oh-my-zsh"

#Theme
ZSH_THEME=""

#Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting) 
source $ZSH/oh-my-zsh.sh

#Star Ship
eval "$(starship init zsh)"

# BY OS SETUP
if [ "$(uname 2> /dev/null)" = "Linux" ]; then
    # LINUX CONFIG
    echo "LINUX CONFIG"

    export PATH="$PATH:/opt/nvim-linux64/bin"
    . "$HOME/.cargo/env"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    export PATH=$PATH:/usr/local/go/bin
    export PATH=$PATH:/snap/bin

    #For Gleam install
    . "$HOME/.asdf/asdf.sh"

    # append completions to fpath
    fpath=(${ASDF_DIR}/completions $fpath)

    # initialise completions with ZSH's compinit
    autoload -Uz compinit && compinit

    export PATH=/home/danielesc/.cache/rebar3/bin:$PATH

    #Conda
    # >>> conda initialize >>>
    export PATH="/home/danielesc/miniconda3/bin:$PATH"  # commented out by conda initialize
    # >>> conda initialize >>>

    # things for conda
    source activate base
    conda activate py312

else
    # MAC CONFIG
    echo "MAC CONFIG"
    export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

    export PATH=/opt/homebrew/anaconda3/bin:$PATH

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        else
            export PATH="/opt/homebrew/anaconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi
