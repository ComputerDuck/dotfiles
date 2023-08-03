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

function cl {
    if [ -z "$TMUX" ]; then
        zle clear-screen
    else
        zle clear-screen && tmux clear-history
    fi
}

zle -N cl
bindkey "^l" cl
