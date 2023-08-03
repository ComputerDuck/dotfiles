# mkdir and cd into that dir
function mkcd {
  last=$(eval "echo \$$#")
  if [ ! -n "$last" ]; then
    echo "Enter a directory name"
  elif [ -d $last ]; then
    echo "\`$last' already exists"
  else
    mkdir $@ && cd $last
  fi
}

# clear scrollback and screen
function clear-screen {
    zle clear-screen
    tmux clear-history
}
zle -N clear-screen
bindkey -v '^L' clear-screen
