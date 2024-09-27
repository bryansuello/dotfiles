##### 9-25-24
##### INSTALL
# install omf, bobthefish as theme
# which fish -- check fish path
# chsh -s /usr/bin/fish -- set fish as default
# echo $SHELL -- check which shell you are using

set -U fish_greeting "Succeed or Die Trying"

##### ALIASES

#alias ls="ls -lah --color=auto"
alias ls="exa -lah --icons --group-directories-first"
alias cat="batcat"  #instead of bat
alias vim="lvim"
alias cl="clear"
alias b="bash"
alias r="ranger"
alias remap="xmodmap ~/Xmodmap"
alias ncal="ncal -y"
# alias mountssd="sudo mount -o remount,rw /media/suellobw/SSD/"

### utilities
alias netspeed="speedtest"
alias net="ping -c 3 google.com" 
#check 'packet lost, 0 means there's connection
# alias battery="cat /sys/class/power_supply/BAT0/capacity"

### locations
alias 1="cd ~/Dev/"
alias 2="cd ~/.config/"
alias 3="cd /mnt/c/Documents\ and\ Settings/Brys/Documents/Obsidian_Win"
# laptop(popOS)
# desktop(ubuntu)
# alias 1="cd ~/Documents/dev/"
# alias downloads="cd ~/Downloads/"
# alias documents="cd ~/Documents/"
#alias obsidian="cd /mnt/c/Obsidian_Win/"
#alias ssd="cd /mnt/x/Downloads\ \(SSD\)/"
#alias play="node ~/dev/notes/terminalQuizG/app.js"

### xampp
alias xampp="sudo /opt/lampp/./manager-linux-x64.run"
alias htdocs="cd /opt/lampp/htdocs/"

### lvim path
set -U fish_user_paths ~/.local/bin $fish_user_paths

### let bobthefish prompt used nerdfonts
set -g theme_nerd_fonts yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_title_display_user yes

# npm start error fix, opens in weapon:3000 instead of localhost:3000/
export HOST=localhost 

# Set starship as prompt
# starship init fish | source
