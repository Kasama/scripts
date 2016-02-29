#!/bin/bash

ex="$(git rev-parse --is-inside-work-tree 2> /dev/null)"

if [[ ! -n "$ex" ]] ; then
	echo "fatal: Not a git repository!" >&2
	return 1
else
	if [ "$#" -gt 0 ]; then
		git add .
		git commit -m "$*"
		git push origin master
	else
		echo "fatal: No commit message" >&2
		return 1
	fi
fi
