function git_branch {
		branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
		if [ "${branch}" != "" ];then
				if [ "${branch}" = "(no branch)" ];then
						branch="(`git rev-parse --short HEAD`...)"
				fi
				echo " ($branch)"
		fi
}
export PS1='\u@\h:\w\[\e[1;36m\]$(git_branch)\[\e[0m\]$ '

