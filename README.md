# dotfiles

Managed by [chezmoi](https://www.chezmoi.io/).

## Requirements

- macOS
- Git

## Getting Started

Run the setup script:

```bash
./setup.sh
```

This script will:
1. Install Homebrew (if not installed)
2. Install chezmoi (if not installed)
3. Initialize chezmoi with this repository
4. Apply dotfiles (includes `brew bundle`)

## Usage

### Sync changes

To apply changes from the source directory to your home directory:

```bash
chezmoi apply
```

### Managing packages

Edit `Brewfile` and run `chezmoi apply`. The packages will be automatically installed via `brew bundle`.

### Adding new dotfiles

```bash
chezmoi add ~/.config/new_config
```

