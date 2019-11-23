# Defined in /tmp/fish.b48SEm/ll.fish @ line 2
function ll --description 'List contents of directory using long format'
	exa -lh --group-directories-first $argv
end
