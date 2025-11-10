#!/usr/bin/env bash
set -e

echo "🛠️  Configurando entorno de dotfiles..."

#enalce de .config
ln -sfn "$HOME/dotfiles/.config/nvim" "$HOME/.config/nvim"
ln -sfn "$HOME/dotfiles/.config/zsh" "$HOME/.config/zsh"


# Enlace para zshrc
if [ -L "$HOME/.zshrc" ] || [ -f "$HOME/.zshrc" ]; then
    echo "⚠️  .zshrc ya existe, creando respaldo..."
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi

# zshenv
# Asegura que el archivo exista
touch ~/.zshenv

# Agrega la variable solo si no está ya presente
grep -qxF 'export ZDOTDIR="$HOME/.config/zsh"' ~/.zshenv || echo 'export ZDOTDIR="$HOME/.config/zsh"' >> ~/.zshenv

# Instala Starship (si no está instalado)
if ! command -v starship &>/dev/null; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi




echo "🎉 Todo listo. Reinicia tu terminal o ejecuta:"
echo "    source ~/.config/zsh/.zshrc"

