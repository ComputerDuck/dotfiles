alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd!='cd -P'

alias ls='ls -GFh'
alias la='ls -ah'
alias ll='ls -l'
alias lla='ll -ah'

alias tedit='open -a TextEdit'
alias py='python'

alias jfd="fd --type f $(cat "$EXCLUDES" 2>/dev/null \ | sed "s/'/'\"'\"'/g" | awk "{printf \" -E '%s'\", "'$0}') | jfind --hints --show-key --select-both"

alias tarcmd='cat ~/.config/help/tar'

alias am="zsh ~/am/src/am.sh"
# alias am="zsh ~/am/src/am.sh np & tmux split-window -h && tmux select-pane -R &&~/am/src/select.sh"

