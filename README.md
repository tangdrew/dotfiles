# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Quick start

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply tangdrew
```

Or if chezmoi is already installed:

```bash
chezmoi init --apply tangdrew
```

## Fresh machine setup

Run the bootstrap script for a full setup (Homebrew, packages, configs, macOS defaults):

```bash
curl -fsLS https://raw.githubusercontent.com/tangdrew/dotfiles/master/bootstrap.sh | bash
```

## What's included

| Config | Path |
|---|---|
| Zsh | `~/.zshrc` |
| Aliases | `~/.aliases.sh` |
| Git | `~/.gitconfig` |
| Vim | `~/.vimrc` |
| EditorConfig | `~/.editorconfig` |
| Ghostty | `~/.config/ghostty/config` |
| Zed | `~/.config/zed/settings.json` |
| Cursor | `~/Library/Application Support/Cursor/User/settings.json` |
| Cursor keybindings | `~/Library/Application Support/Cursor/User/keybindings.json` |
| GitHub CLI | `~/.config/gh/config.yml` |
| OpenCode | `~/.config/opencode/config.json` |
| Claude Code | `~/.claude/settings.json` |
| SSH | `~/.ssh/config` |
| macOS defaults | `~/.macos` |
| Homebrew packages | `Brewfile` |

## Adding new dotfiles

```bash
chezmoi add ~/.some/config
chezmoi cd  # opens the source directory
# commit and push
```

## Per-machine config

Template variables are prompted on `chezmoi init`:

- `email` — Git author email (used in `.gitconfig`)

Edit `~/.config/chezmoi/chezmoi.toml` to change values after init.
