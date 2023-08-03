# if [ -z "$TMUX" ]; then
#  exec arch -x86_64 tmux
# fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# source
plug "$XDG_CONFIG_HOME/zsh/alias.zsh"
plug "$XDG_CONFIG_HOME/zsh/export.zsh"
plug "$XDG_CONFIG_HOME/zsh/functions.zsh"
plug "$XDG_CONFIG_HOME/zsh/prompt.zsh-theme"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"

# Load and initialise completion system
autoload -Uz compinit
compinit


# history
export HISTFILE="$HOME/.zsh_history"
setopt appendhistory
