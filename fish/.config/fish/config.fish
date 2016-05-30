
# common env variables
set -x EDITOR vim
set -x TERM xterm-256color
set PAGER 'less -r -E -X'

# go
set -x GOPATH /home/ycardon/go
set -x PATH $PATH $GOPATH/bin

# Prompt config (used by bobthefish theme)
set -g theme_date_format "+%a %H:%M"
set -g theme_nerd_fonts yes

