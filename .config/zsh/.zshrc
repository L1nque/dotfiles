# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit 
source "${ZINIT_HOME}/zinit.zsh" 

# zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git

# Load completions
autoload -U compinit && compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

zinit cdreplay -q

# To customize prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/minimal.omp.toml)"

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey ' ' magic-space

# Open buffer line in edit mode
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# History
HISTSIZE=5000
HISTFILE="$XDG_STATE_HOME/zsh/history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls $realpath'

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
eval "$(mise activate zsh)"

# Aliases
alias grep="grep --color=auto"
alias ls="eza --icons=always --group-directories-first"
alias ll="eza -lah --icons=always --group-directories-first --git"
alias tree="eza --tree --icons=always"
alias vim="nvim"

# Suffix Aliases
alias -s md="glow"
alias -s json="jless"
alias -s {png,jpg,jpeg,webp,gif,bmp}="chafa"

# Custom widgets
clear-keep-buffer() {
  zle clear-screen
}
zle -N clear-keep-buffer
bindkey '^Xl' clear-keep-buffer

copy-command() {
  echo -n $BUFFER | wl-copy
  zle -M "Copied to clipboard"
}
zle -N copy-command
bindkey '^[[99;6u' copy-command
