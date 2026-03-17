#!/bin/bash
set -e

echo "==> Bootstrapping dotfiles..."

# 1. Install Homebrew if not present
if ! command -v brew &>/dev/null; then
    echo "==> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Install chezmoi via Homebrew
if ! command -v chezmoi &>/dev/null; then
    echo "==> Installing chezmoi..."
    brew install chezmoi
fi

# 3. Initialize and apply chezmoi
echo "==> Applying dotfiles with chezmoi..."
chezmoi init --apply tangdrew

# 4. Install Homebrew packages from Brewfile
if [ -f "$HOME/Brewfile" ]; then
    echo "==> Installing Homebrew packages..."
    brew bundle install --file="$HOME/Brewfile"
fi

# 5. Run macOS defaults
if [ -f "$HOME/.macos" ]; then
    echo "==> Applying macOS defaults..."
    chmod +x "$HOME/.macos"
    "$HOME/.macos"
fi

# 6. Install Cursor extensions
if command -v cursor &>/dev/null && [ -f "$HOME/cursor-extensions.txt" ]; then
    echo "==> Installing Cursor extensions..."
    while IFS= read -r ext; do
        cursor --install-extension "$ext" || true
    done < "$HOME/cursor-extensions.txt"
fi

# 7. Install zplug if not present
if [ ! -d "$HOME/.zplug" ]; then
    echo "==> Installing zplug..."
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

echo "==> Done! Restart your terminal to apply changes."
