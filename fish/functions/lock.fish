function lock --description 'Lock the screen with a funny random commit message'
	i3lock-fancy -g -f Fira-Code-Bold -t (printf "git commit -m '%s'" (lynx -dump whatthecommit.com | head -n1 | xargs))
end
