# Defined in /tmp/fish.fFKuzC/llr.fish @ line 2
function llr --description 'List content of directory, recursively, long format'
	exa -lgR --group-directories-first $argv;
end
