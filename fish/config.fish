if status is-interactive
# Commands to run in interactive sessions can go here

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
alias 1="cd ~/Dev/"
alias 2="cd ~/.config/"
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

# fzf custom - file preview, nord colorscheme
export FZF_DEFAULT_OPTS="
--preview 'batcat --style numbers,changes --theme Nord --color=always  {}'
--border rounded
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
"


end
