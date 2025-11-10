# === Inicialización de Zsh ===
export SHELL=/bin/zsh
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.local/bin:$PATH"
export EDITOR="nvim"
export PATH="$PATH:/mnt/c/Users/$(whoami)/AppData/Local/Programs/Microsoft VS Code/bin"


# === Inicialización de Starship ===
eval "$(starship init zsh)"

# === Inicialización de Zoxide ===
eval "$(zoxide init zsh)"
alias cd='z'

# === Fastfetch (opcional) ===
fastfetch

# === Alias útiles ===
alias ls='exa -la --icons'
alias mongodb='mongod --config ~/mongodb/mongod.conf'
export STARSHIP_CONFIG="$HOME/dotfiles/.config/starship/starship.toml"
export TMUX_CONF="$HOME/dotfiles/.config/tmux/.tmux.conf"
alias tmux="tmux -f $TMUX_CONF"


# === Pyenv ===
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

