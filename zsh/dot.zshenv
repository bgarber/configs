export PATH="/sbin:/usr/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/bgarber/bin"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Enable colors on manual
#export PAGER=most

# Configure default editor
export SVN_EDITOR=vi

# Enable 256-color on terminal
case "$TERM" in
*rxvt*)
    export TERM=rxvt-256color
    ;;
screen*)
    export TERM=screen-256color
    ;;
xterm*)
    export TERM=xterm-256color
    ;;
esac

