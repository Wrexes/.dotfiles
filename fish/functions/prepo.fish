# Defined in /tmp/fish.8kM3hi/prepo.fish @ line 2
function prepo --description 'Set up a repo via BLIH'
	test (count $argv) -ne 1 && echo "Usage: prepo REPONAME (without year)" >&2 &&return 1;

    set -l REPO $argv[1]_$ACADEMIC_YEAR

    echo "Creating $REPO..."
    and blih -u ludovic.fernandez@epitech.eu repository create $REPO

    and echo "Letting Marvin in..."
    and blih -u ludovic.fernandez@epitech.eu repository setacl $REPO ramassage-tek r

    and git clone git@git.epitech.eu:/ludovic.fernandez@epitech.eu/$REPO
    and cd $REPO
    and mkdir -p include/tests src tests lib dontpush
    and cp -a $lfox lib/
    and rm -rf lib/libfox/{.git*, LICENSE, libfox-trail.*, dependency}
    and cp $tekgi .gitignore
    and cp -at. $mktemplate/*

    or echo "Something wrong happened during repo creation." >&2 && return -1
end
