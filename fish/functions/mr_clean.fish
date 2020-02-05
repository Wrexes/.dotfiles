# Defined in /tmp/fish.4gNICz/mr_clean.fish @ line 2
function mr_clean --description 'Mieux que Sanytol.'
	if count $argv > /dev/null
        set mr_clean_temp (pwd)
        for i in (seq (count $argv))
            cd $argv[$i]
            echo [Mr Clean] Entering $argv[$i]...
            [ -e $argv[$i]/Makefile ] && make clean
            rmtemps
            echo [Mr Clean] Exiting $argv[$i].
        end
        cd $mr_clean_temp
    else
        [ -e Makefile ] && make clean
        rmtemps
    end
    figlet -c -f small "Sa magie c'est sa puissance !"
end
