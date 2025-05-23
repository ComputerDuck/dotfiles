#change config dir
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#export PS1="%n@ %1~ $#"
# export PS1="%{%F{red}%}%n%{%f%}@%{%F{green}%}%m %{%F{yellow}%}%~ %{$%f%} "
#export PS1="%{%F{red}%}%m%{%f%}:%{%F{green}%}%n %{%F{yellow}%}%~ %{$%f%}%\ "


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#path to own scripts
export PATH=${PATH}:$HOME/.local/bin

# export TERM=alacritty
export TERM="xterm-256color"

#homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm@19/bin:$PATH"

export PATH="/usr/local/opt/postgresql@16/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@16/lib/pkgconfig"
export DYLD_FALLBACK_LIBRARY_PATH="/usr/local/lib"

export GPG_TTY=$(tty)

export ZSH_AUTOSUGGEST_MANUAL_REBIND=0

export CC="/usr/local/opt/llvm@19/bin/clang"
export CXX="/usr/local/opt/llvm@19/bin/clang++"

# export TMUX_SCRIPTS="$HOME/.config/tmux/scripts"

# export LIBRARY_PATH="/usr/local/opt/llvm@19/include/c++/v1"
