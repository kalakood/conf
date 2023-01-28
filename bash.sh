#!/bin/bash
cat << EOF >> ~/.bashrc
export TERM=xterm
export PS1="\[\033[38;5;93m\]\u\[$(tput sgr0)\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]: \[$(tput sgr0)\]"
EOF

