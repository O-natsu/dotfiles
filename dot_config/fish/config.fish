if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Homebrew
/opt/homebrew/bin/brew shellenv | source

# Starship
starship init fish | source

# Mise
mise activate fish | source
