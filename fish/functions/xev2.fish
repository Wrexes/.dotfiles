# Defined in - @ line 1
function xev2 --description 'Xev with a simpler output'
	xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
end
