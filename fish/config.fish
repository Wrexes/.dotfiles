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
    # Alt+g : Show a git diff
    bind \eg 'git diff; echo; commandline -f repaint'


# Perl Local::Lib
if command -v perl > /dev/null 2>&1 && command -v cpanm > /dev/null 2>&1
  test -d "$HOME/perl5/lib/perl5" && eval (perl -I "$HOME/perl5/lib/perl5" -Mlocal::lib)
end

# For setting $PATH, check $fish_config/conf.d/path.fish
# For other environment variables, see $fish_config/conf.d/env.fish
