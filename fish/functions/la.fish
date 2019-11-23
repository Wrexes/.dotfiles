# Defined in /tmp/fish.sjdKFe/la.fish @ line 2
function la --description 'List contents of directory, including hidden files in directory using long format'
	exa --git -lah --group-directories-first $argv
end
