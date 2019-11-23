# Defined in /tmp/fish.4gNICz/mr_clean.fish @ line 2
function mr_clean --description 'Mieux que Sanytol.'
	if count $argv > /dev/null
        set mr_clean_temp (pwd)
        for i in (seq (count $argv))
            cd $argv[$i]
            and figlet -tf digital Cleaning $argv[$i]
            if [ -e $argv[$i]/Makefile ]
                echo "Found a Makefile, cleaning up."
                make clean
            end
            rmtemps
            cd $mr_clean_temp
        end
    else
        if [ -e Makefile ]
            make clean
        end
        rmtemps
    end
    figlet -c -f small "Sa magie c'est sa puissance !"
end
