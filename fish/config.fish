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
    bind \el 'echo; git plog'



# For setting $PATH, check <fish_conf_dir>/conf.d/userpath.fish
# For other environment variables, see <fish_conf_dir>/conf.d/userenv.fish
