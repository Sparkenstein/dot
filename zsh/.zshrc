# zplug
source ~/.zplug/init.zsh

export fpath=(~/.zsh $fpath)
autoload -U compinit && compinit

export GPG_TTY=$(tty)
# Env Variables
export PATH="$PATH:$HOME/bin/"
export PATH=/home/spark/.fnm:$PATH
eval "`fnm env`"
export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export EDITOR=nvim
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Zplug
# plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "chrissicool/zsh-256color"
zplug "zsh-users/zsh-history-substring-search", defer:3

# omz specific stuff
zplug "lib/completion", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/spectrum", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/man", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh


# auto download
zplug "junegunn/fzf", from:gh-r, as:command, rename-to:fzf, use:"*linux_amd64.tar.gz"
zplug "junegunn/fzf", from:gh-r, as:plugin, use:"shell/*.zsh",  defer:2
zplug "sharkdp/fd", from:gh-r, as:command, rename-to:fd, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "sharkdp/bat", from:gh-r, as:command, rename-to:bat, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "dandavison/delta", from:gh-r, as:command, rename-to:delta, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "extrawurst/gitui", from:gh-r, as:command, rename-to:gitui, use:"*linux-musl.tar.gz"
zplug "BurntSushi/ripgrep", from:gh-r, as:command, rename-to:rg, use:"*x86_64-unknown-linux-musl.tar.gz"
zplug "XAMPPRocky/tokei", from:gh-r, as:command, rename-to:tokei, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "sharkdp/hyperfine", from:gh-r, as:command, rename-to:hyperfine, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug "ClementTsang/bottom", from:gh-r, as:command, rename-to:btm, use:"*x86_64-unknown-linux-gnu.tar.gz"
zplug dracula/zsh, as:theme

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load

#Keybindings
# Use the Emacs-like keybindings
bindkey -e

# Keybindings for substring search plugin. Maps up and down arrows.
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# Keybindings for autosuggestions plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept


# Aliases
alias xs="xbps-query -Rs"
alias xi="sudo xbps-install"
alias xis="sudo xbps-install -S"
alias xr="sudo xbps-remove"
alias xrf="sudo xbps-remove -R"

# functions
precmd() {
    precmd() {
        echo
    }
}

