#!/bin/bash

export PS1="[$(whoami)@$(hostname | sed -e 's/\(^[^.]*\).*/\1/') \W\$(git branch 2> /dev/null | grep -e '\* ' | sed -e 's/^..\(.*\)/|\[${TXTYEL}\]\1\[${TXTRST}\]/' -e 's/|.*master/|\[${TXTRED}\]master/')] "

alias g=git
source /etc/bash_completion.d/git
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
        || complete -o default -o nospace -F _git g
