function addpath --description "Append a directory to \$PATH"
    for path in $argv
        switch (echo "$fish_user_paths")
            case "*$path*"
                echo > /dev/null
            case "*"
                test -d $path
                and set -ax fish_user_paths $path
        end
    end
end

set -e  fish_user_paths
set -Ux fish_user_paths

addpath $HOME/.local/{bin, scripts}
addpath $HOME/.config/i3/scripts
