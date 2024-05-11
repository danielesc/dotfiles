Install Zsh

Mac
already runs zsh

Ubuntu
apt install zsh
sudo chsh -s $(which zsh)


oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


install starship
curl -sS https://starship.rs/install.sh | sh

TMUX
sudo apt install tmux

tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
install a plugin press prefix + I

install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

on ubuntu/mac need to install a c compiler
sudo apt-get install build-essential

Telescope stuffs
ripgrep
$ brew install ripgrep
sudo apt-get install ripgrep

fd
sudo apt install fd-find
brew install fd



Windows terminal theme
ref https://github.com/rebelot/kanagawa.nvim/blob/master/extras/windows_terminal.json
 {
        "background": "#181616",
        "black": "#0d0c0c",
        "brightBlack": "#a6a69c",
        "blue": "#8ba4b0",
        "brightBlue": "#7FB4CA",
        "green": "#8a9a7b",
        "brightGreen": "#87a987",
        "purple": "#a292a3",
        "brightPurple": "#8992a7",
        "brightRed": "#E46876",
        "red": "#c4746e",
        "brightWhite": "#c5c9c5",
        "white": "#C8C093",
        "brightYellow": "#E6C384",
        "yellow": "#c4b28a",
        "brightCyan": "#7AA89F",
        "cyan": "#8ea4a2",
        "cursorColor": "#c5c9c5",
        "foreground": "#C8C093",
        "name": "KanagawaDragon",
        "selectionBackground": "#223249"
    }
