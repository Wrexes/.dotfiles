# Defined in /tmp/fish.2r3Mp3/update-all.fish @ line 2
function update-all --description 'Update everything with a single command.'
	figlet -tf slant "YAY "
	figlet -tf small "Cleaning cache..."
    yay -Yc --noconfirm
    and yay -Sc --noconfirm
    if test ! $status -eq 0
        tput civis
        read -n1 -P "Error !"
        return
    end

    figlet -tf small "Updating packages..."
    yay
    if test ! $status -eq 0
        tput civis
        read -n1 -P "Error !"
        return
    end
    echo; echo;

    figlet -tf slant "NeoVim"
    nvim +PlugUpdate +CocUpdate +qa
    if test ! $status -eq 0
        tput civis
        read -n1 -P "Error !"
        return
    end
    figlet -tf small "Done."

#    figlet -tf slant "Oh My Fish !"
#    omf update
#    echo; echo;

    figlet -tf slant "Fisher"
    fisher self-update
    if test ! $status -eq 0
        tput civis
        read -n1 -P "Error !"
        return
    end
    fisher
    echo; echo;
    read -P "Press any key to continue." -n1 > /dev/null
    rfish
end
