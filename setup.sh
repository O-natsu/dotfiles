#!/bin/bash

set -e

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install chezmoi if not installed
if ! command -v chezmoi &> /dev/null; then
    echo "Installing chezmoi..."
    brew install chezmoi
fi

# Initialize chezmoi with this repository
echo "Initializing chezmoi..."
chezmoi init --source="$(cd "$(dirname "$0")" && pwd)"

# Apply dotfiles
echo "Applying dotfiles..."
chezmoi apply -v
