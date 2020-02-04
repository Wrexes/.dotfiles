# Defined in /tmp/fish.8kM3hi/prepo.fish @ line 2
function prepo --description 'Set up a repo via BLIH'
	test (count $argv) -ne 1 && echo "Usage: prepo MODULE_PROJECT (without year)" >&2 &&return 1;

    # Setup repo name
    set -l REPO $argv[1]_$ACADEMIC_YEAR
    # Who's using the script ?
    set -l TECHUSER ludovic.fernandez@epitech.eu

    # Create it
    echo "Creating $REPO..."
    and blih -u $TECHUSER repository create $REPO

    # Give read permissions too autograder
    and echo "Letting Marvin in..."
    and blih -u $TECHUSER repository setacl $REPO ramassage-tek r

    # Setup stuff in the repo
    and git clone git@git.epitech.eu:/$TECHUSER/$REPO
    and cd $REPO
    and mkdir -p include/tests src tests lib dontpush
    and cp -a $lfox lib/
    and rm -rf lib/libfox/{.git*, LICENSE, libfox-trail.*, dependency}
    and cp $tekgi .gitignore
    and cp -at . $mkrepo/*

    or echo "Something wrong happened during repo creation." >&2 && cd ../ && return 1
end
