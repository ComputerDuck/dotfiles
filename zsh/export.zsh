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

export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

#homebrew
export PATH="/usr/local/sbin:$PATH"
