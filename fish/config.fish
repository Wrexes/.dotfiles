# Autostart
    # Starship prompt
    eval (starship init fish)
    # The Fuck
    thefuck --alias | source

# Enable vim mode by default
#    fish_vi_key_bindings

# Enable default mode
    fish_default_key_bindings

# Make Alt+L Print a git pretty-log
    bind \el 'git plog; echo; commandline -f repaint'



# For setting $PATH, check <fish_conf_dir>/conf.d/path.fish
# For other environment variables, see <fish_conf_dir>/conf.d/env.fish
