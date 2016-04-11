
# common env variables
set -x EDITOR vim
set -x TERM xterm-256color

# Prompt config (used by bobthefish theme)
set -g theme_date_format "+%a %H:%M"

# Fisherman init
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
