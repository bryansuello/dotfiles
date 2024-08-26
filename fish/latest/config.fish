set -U fish_greeting ""

# ALIASES

#alias ls="ls -lah --color=auto"
alias ls="exa -lah --icons --group-directories-first"
alias cat="batcat"  #instead of bat
alias vim="lvim"
alias cl="clear"
alias tm="tmux"
alias n="node"
alias t="tree"
alias b="bash"
alias r="ranger"
alias mountssd="sudo mount -o remount,rw /media/suellobw/SSD/"
alias remap="xmodmap ~/Xmodmap"

# utilities
alias netspeed="speedtest"
#check 'packet lost, 0 means there's connection
alias net="ping -c 3 google.com" 
alias battery="cat /sys/class/power_supply/BAT0/capacity"

# locations
# laptop(popOS)
alias 1="cd ~/Dev/"
# desktop(ubuntu)
# alias 1="cd ~/Documents/dev/"
alias 2="cd ~/.config/"
alias 3="cd /mnt/c/Documents\ and\ Settings/Brys/Documents/Obsidian_Win"
alias downloads="cd ~/Downloads/"
alias documents="cd ~/Documents/"
#alias obsidian="cd /mnt/c/Obsidian_Win/"
#alias ssd="cd /mnt/x/Downloads\ \(SSD\)/"
#alias play="node ~/dev/notes/terminalQuizG/app.js"

#xampp
alias xampp="sudo /opt/lampp/./manager-linux-x64.run"
alias htdocs="cd /opt/lampp/htdocs/"

##lvim path
set -U fish_user_paths ~/.local/bin $fish_user_paths

# npm start error fix, opens in weapon:3000 instead of localhost:3000/
export HOST=localhost 

# Set starship as prompt
#starship init fish | source
