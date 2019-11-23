# Defined in /tmp/fish.bvztTY/rfish.fish @ line 2
function rfish --description 'Reload shell config (including env/path)'
	source $XDG_USER_CONFIG_DIR/fish/config.fish
    source $XDG_USER_CONFIG_DIR/fish/conf.d/userpath.fish
    source $XDG_USER_CONFIG_DIR/fish/conf.d/userenv.fish
    return 0
end
