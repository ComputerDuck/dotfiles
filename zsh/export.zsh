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

export TERM=alacritty

export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
export PATH="${PATH}:$HOME/.config/emacs/bin"

#homebrew
export PATH="/usr/local/sbin:$PATH"
#MacPorts
#export PATH="/opt/local/bin"

export PATH="/usr/local/opt/postgresql@16/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@16/lib/pkgconfig"

export GPG_TTY=$(tty)

export ZSH_AUTOSUGGEST_MANUAL_REBIND=0
