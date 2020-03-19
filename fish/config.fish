# Autostart
    # Starship prompt
    #eval (starship init fish)
    starship init fish | source
    # The Fuck
    thefuck --alias | source

# Enable vim mode by default
#    fish_vi_key_bindings

# Enable default mode
    fish_default_key_bindings

# Shortcuts
# -- Git / Gitnow
    # Alt+l : Print a git pretty-log
    bind \el 'git plog; echo; commandline -f repaint'
    # Alt+s : Print a compact git status status
    bind \es 'state; echo; commandline -f repaint'



# For setting $PATH, check <fish_conf_dir>/conf.d/path.fish
# For other environment variables, see <fish_conf_dir>/conf.d/env.fish
