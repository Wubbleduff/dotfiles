# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


#~/.screenlayout/layout.sh      # Set up monitor layout
xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --mode 1920x1200 --pos 4480x0 --rotate left --output DP-2 --primary --mode 2560x1440 --rate 144.00 --pos 1920x0 --rotate normal --output DP-3 --off --output DP-4 --mode 1920x1200 --pos 0x0 --rotate normal --output DP-5 --off --output USB-C-0 --off
xset r rate 200 40             # Keyboard repeat speed
nitrogen --restore &           # Wallpapers
#~/apps/dwm-6.2/status_bar.sh & # dwm status bar update
# while true; do
#     xsetroot -name "$(date)"
#     sleep 1
# done
xinput --set-prop 8 299 -0.9   # Mouse speed
compton &  # For window transparency

