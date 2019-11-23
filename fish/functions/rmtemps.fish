# Defined in /tmp/fish.NSLHaA/rmtemps.fish @ line 2
function rmtemps --description 'Remove temp files recursively'
	find . -depth                   \
        -type f                     \
        \(                          \
            -name "#*#"             \
            -o -name "*~"           \
            -o -name "*.o"          \
            -o -name "*.d"          \
            -o -name "*.gcno"       \
            -o -name "*.gcda"       \
            -o -name "vgcore.*"     \
            -o -name ".gdb_history" \
            -o -name "a.out"        \
            -o -name ".#*"          \
            -o -name "*.orig"       \
        \)                          \
        -print                      \
        -delete
end
