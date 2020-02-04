# Defined in /tmp/fish.SYNb1W/lr.fish @ line 2
function lr --description 'List content of directories recursively'
	exa -gR --group-directories-first $argv;
end
