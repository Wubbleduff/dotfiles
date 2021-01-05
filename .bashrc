#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bindings
alias ls='ls --color=auto'
alias ll="ls -al"

# Colors
BLUE="\[\e[38;5;57m\]"
GREEN="\[\e[38;5;40m\]"
ORANGE="\[\e[38;5;208m\]"
GRAY="\[\e[38;5;245m\]"
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"

# Prompt
MY_USER="${BLUE}\u${RESET}"
MY_HOSTNAME="${GREEN}\h${RESET}"
MY_CURRENT_DIRECTORY="${GRAY}\w"
# PS1='[\u@\h \W]\$ '
PS1="${MY_USER}@${MY_HOSTNAME}${RESET}:${BOLD}${MY_CURRENT_DIRECTORY}${RESET}\n$ "

# xterm
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

