# Defined in - @ line 1
function restartx --description 'Restart X session'
	sudo systemctl restart display-manager $argv;
end
