# curl -s https://raw.githubusercontent.com/kalakood/conf/main/screen_ext.sh | bash -s
cat << EOF > ~/.screenrc

shelltitle ""
escape ^ll
startup_message off
defscrollback 9000
bind k focus up
bind j focus down
bind h focus left
bind l focus right
caption always "%{0}<<< \033[93m$1\033[0m | %n:%t >>>"
rendition so "="
EOF

