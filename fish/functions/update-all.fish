# Defined in /tmp/fish.CluFvd/update-all.fish @ line 2
function update-all --description 'Update everything with a single command.'
	figlet -tf slant "YAY"
    figlet -tf small "Cleaning cache..."
    yay -Yc
    yay -Sc
    figlet -tf small "Updating packages..."
    yay
    echo; echo;

    #figlet -tf slant "N P M"
    #sudo npm up -g
    #echo; echo;

    figlet -tf slant "Oh My Fish !"
    omf update
    echo; echo;

    figlet -tf slant "Fisher"
    fisher self-update
    fisher
    echo; echo;

    set -l CWD (pwd)
    figlet -tf slant "Vim plugins"
    cd $DOTDIR/.vimpkg/bundle/vim-template/templates
    and git submodule update --init --recursive
    and for tmplt in (ls ../../../template-save)
        rm $tmplt
        end
    and ln -s ../../../template-save/* .
    and cd $DOTDIR/.vimpkg && stage . && commit -m "[VIM] Automatic plugin update" && git push
    cd $CWD
end
