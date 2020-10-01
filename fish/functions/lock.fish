function lock --description 'Lock the screen with a funny random commit message'
	i3lock-fancy -g -f Fira-Code-Bold -t (printf "git commit -m '%s'" (lynx -nolist -dump whatthecommit.com | head -n -2 | xargs))
end
