#change config dir
export ZSH_AUTOSUGGEST_MANUAL_REBIND=0

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export TERM="xterm-256color"

#homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm@19/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#path to own scripts
export PATH=${PATH}:$HOME/.local/bin

export PATH="/usr/local/opt/postgresql@16/bin:$PATH"
export PATH="/$HOME/scratch/zig/zig-x86_64-macos-0.14.1:$PATH"

export PKG_CONFIG_PATH="/usr/local/opt/postgresql@16/lib/pkgconfig"
export DYLD_FALLBACK_LIBRARY_PATH="/usr/local/lib"

export GPG_TTY=$(tty)

export CC="/usr/local/opt/llvm@19/bin/clang"
export CXX="/usr/local/opt/llvm@19/bin/clang++"
export LDFLAGS="-L/usr/local/opt/llvm@19/lib"
# export LDFLAGS="-L/usr/local/opt/llvm@19/lib/unwind -lunwind" // add this to clang.conf
# export LDFLAGS="-L/usr/local/opt/llvm@19/lib/c++ -L/usr/local/opt/llvm@19/lib/unwind -lunwind" // add this clang++.conf
export CPPFLAGS="-I/usr/local/opt/llvm@19/include"
export DOCKER_HOST=unix:///$HOME/.colima/docker.sock

