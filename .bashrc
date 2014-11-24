# The # sign notes that the line is a comment
# v 0.3.2m # I always version to make sure I am not overwriting files.
# 2009-02-13 # This is the last date I edited a file.

# PS1,PS2, etc. are variables that allow you to customize your command prompt.
# More can be found on this by searching the internet
# Mine tells bash to give me the host name (\h), the highest directory of my working path (\W)
# my user name (\u) and the version of the shell (\v), followed by $, which is a sign used
# to denote that this is not a super user
# It ends up looking like:
# [unimind : ~] sc 3.2$
# PS1="[\[33[0;37m\]\h : \W] \u \v$ "
# PS1="[\h : \W] \u \v$ "
PS1="\[\e[36;40;1m\]\u@\h: \[\e[34;1m\]\d:\w\n\[\e[31;1m\]\# \t->\[\e[0m\]"
#PS1="\u@\h:\w\n\t->"
#PS1='\e[33;1m\u@\h: \xe[31m\W\e[0m\$ '
# screen stuff from hans.fugal.net
# This is an environment variable PROMPT_COMMAND that does some
# sneaky things for the program GNU Screen.
# export PROMPT_COMMAND='echo -ne "\ek\e\\"'

# up and down keys search through history like in MATLAB
# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'

# more history stuff
# HISTSIZE sets the number of history items to retain but I commented it out for now
# HISCONTROL=ignoredups tells bash not to register two instances of a command in a row
# export HISTSIZE=1000
export HISTCONTROL=ignoredups

# GS_OPTIONS are my ghost script options to not compress raster images with epstopdf
# export GS_OPTIONS="-dAutoFilterColorImages=false -dColorImageFilter=/FlateEncode"

# set editor variable for general editing
export EDITOR=vi

# MATLAB path information? doesn't appear to work
# export MATLABPATH=~/.matlab/R2008a/

# Python startup file
#export PYTHONSTARTUP=~/.pythonrc

# PATH is a variable that is tricky. You probably shouldn't use this version but the following:
# export PATH=$PATH
# you can add other paths to this by using the colon notation seen below.
# export PATH=/bin:/sbin:/usr/X11/bin:/usr/X11R6/bin:/opt/bin:/opt/local/bin:/usr/bin:/usr/sbin:/usr/local/bin:/Developer/usr/bin/:/Applications/matlab/bin
export PATH=/bin:$PATH
export PATH=/usr/local/sbin:$PATH
# Aliases for my sanity
# these let me type the alias instead of the entire command for common commands
# the semicolon separates different commands in bash
alias app='open -a' # usage: 'app itunes' will open itunes, mac only
# alias current='cd ~/sandbox/codeproject/current_branch/; pwd'
# alias data='cd /repo/data/; pwd; ls'

# common/overloaded util names
# I do this because i want these programs to always run in these modes
alias mv='mv -iv'
alias cp='cp -iv'
alias df='df -h'
alias ll='ls -lrtah'
alias ip='ipconfig getifaddr en0'
alias mkdir='mkdir -p'
source ~/.commands.rc

function title ()
{
case $TERM in
*term | ansi | xterm-color | rxvt |vt100 | gnome* )
echo -n -e "33]0;$*07" ;;
*) ;;
esac
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
