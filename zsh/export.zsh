#change config dir
export ZSH_AUTOSUGGEST_MANUAL_REBIND=0

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm@19/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#path to own scripts
export PATH=${PATH}:$HOME/.local/bin

export PATH="/usr/local/opt/postgresql@16/bin:$PATH"

export PATH="/$HOME/scratch/zig/zig-x86_64-macos-0.14.1:$PATH"
export PATH="/$HOME/scratch/odin:$PATH"
export PATH="$PATH:/usr/local/anaconda3/bin"
export PATH="$PATH:/$HOME/personal/c_c++/core_project/cork/bin"

export PKG_CONFIG_PATH="/usr/local/opt/postgresql@16/lib/pkgconfig"
export DYLD_FALLBACK_LIBRARY_PATH="/usr/local/lib"

export GPG_TTY=$(tty)

export LLVM_DIR="/usr/local/opt/llvm@19"
export CC="$LLVM_DIR/bin/clang"
export CXX="$LLVM_DIR/bin/clang++"
export DYLD_LIBRARY_PATH="$LLVM_DIR/lib:$DYLD_LIBRARY_PATH"
ln -sf $CC /usr/local/bin/cc

ln -sf /usr/local/bin/gcc-14 /usr/local/bin/gcc
ln -sf /usr/local/bin/g++-14 /usr/local/bin/g++

DOCKER_HOST="unix://$HOME/.config/colima/default/docker.sock"
# export DOCKER_HOST=unix:///$HOME/.colima/docker.sock

