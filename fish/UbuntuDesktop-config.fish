if status is-interactive
# Commands to run in interactive sessions can go here

# Set starship as prompt
starship init fish | source


set -U fish_greeting ""


#alias ls="ls -lah --color=auto"
alias ls="exa -lah --icons --group-directories-first"
alias cat="batcat"  #instead of bat
alias vim="lvim"
alias cl="clear"
alias tm="tmux"
alias 1="cd ~/Dev/"
alias 2="cd ~/.config/"
alias n="node"
alias t="tree"
alias b="bash"
alias net="speedtest"
alias battery="cat /sys/class/power_supply/BAT1/capacity"
#alias obsidian="cd /mnt/c/Obsidian_Win/"
#alias downloads="cd /mnt/c/Users/brys/Downloads/"
#alias ssd="cd /mnt/x/Downloads\ \(SSD\)/"
#alias play="node ~/dev/notes/terminalQuizG/app.js"

##lvim path
set -U fish_user_paths ~/.local/bin $fish_user_paths

# npm start error fix, opens in weapon:3000 instead of localhost:3000/
export HOST=localhost 

end
