# Defined in /tmp/fish.sqjFNj/pdf.fish @ line 2
function pdf --description 'Open a pdf'
	xdg-open $argv[1] &
    sleep 0.2
    disown (jobs | grep ".pdf" | cut -f 2) >/dev/null 2>&1
end
