#!/bin/bash
# defualt escape is k
# curl -s https://raw.githubusercontent.com/kalakood/conf/main/screen_ext.sh | bash -s 
# curl -s https://raw.githubusercontent.com/kalakood/conf/main/screen_ext.sh | bash -s l 
escape=${1:-k}
cat << EOF > ~/.screenrc
shelltitle "?"
escape ^$escape$escape
startup_message off
defscrollback 9000
bind k focus up
bind j focus down
bind h focus left
bind l focus right
caption always "%{0}<<< \033[33m%H\33[0m:\033[31m%m\033[0m:\033[36m%t\033[0m >>>"
rendition so "="
shell bash
EOF

