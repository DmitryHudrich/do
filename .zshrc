# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

PROMPT_EOL_MARK=

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias p='sudo pacman --noconfirm -Syu'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias gac='git add --all && git commit -m'
alias c='pygmentize -g'
alias zv='function _zv() { zoxide query "$1" && cd "$(zoxide query "$1")" && nvim; }; _zv'

RUSTFLAGS="-C link-arg=-fuse-ld=lld"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/eblan/.dart-cli-completion/zsh-config.zsh ]] && . /home/eblan/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
#
eval "$(zoxide init zsh)"

export PATH=$HOME/.local/bin:$PATH


[ -f "/home/eblan/.ghcup/env" ] && . "/home/eblan/.ghcup/env" # ghcup-envexport PATH='/home/eblan/.cabal/bin:/home/eblan/.ghcup/bin:/home/eblan/.local/bin:/home/eblan/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/rustup/bin:/home/eblan/.dotnet/tools'
# Aadd .NET Core SDK tools
export PATH="$PATH:/home/eblan/.dotnet/tools"
