# Defined in /tmp/fish.G1kgl0/rmtemps.fish @ line 2
function rmtemps --description 'Remove temp files recursively'
	find . -depth                   \
        -type f                     \
        \(                          \
            -name "#*#"             \
            -o -name "*.d"          \
            -o -name "*.gcda"       \
            -o -name "*.gcno"       \
            -o -name "*.gcov"       \
            -o -name "*.o"          \
            -o -name "*.orig"       \
            -o -name "*.tmp"        \
            -o -name "*~"           \
            -o -name ".#*"          \
            -o -name ".bash_history"\
            -o -name ".gdb_history" \
            -o -name ".nvimlog"     \
            -o -name "a.out"        \
            -o -name "tags"         \
            -o -name "vgcore.*"     \
        \)                          \
        -print                      \
        -delete
end
