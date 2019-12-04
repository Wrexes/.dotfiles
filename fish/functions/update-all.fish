# Defined in /tmp/fish.zY5HdU/update-all.fish @ line 2
function update-all --description 'Update everything with a single command.'
    figlet -tf slant "YAY "
	figlet -tf small "Cleaning cache..."
    yay -Yc
    yay -Sc
    figlet -tf small "Updating packages..."
    yay
    echo; echo;

    figlet -tf slant "Oh My Fish !"
    omf update
    echo; echo;

    figlet -tf slant "Fisher"
    fisher self-update
    fisher
    echo; echo;
    rfish
end
