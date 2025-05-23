# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# source
plug "${HOME}/.zsh-plugins/.zsh-async/async.zsh"

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

# opam configuration
eval $(opam env)
# [[ ! -r /Users/hachmann/.opam/opam-init/init.zsh ]] || source /Users/hachmann/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

if [[ "$TERM_PROGRAM" == "alacritty" || "$TERM_PROGRAM" == "ghostty" && -z "$TMUX" ]]; then
    # exec arch -x86_64 tmux "new-session" -D -A -s "main"
    if tmux has-session -t "main" 2>/dev/null; then
        exec arch -x86_64 tmux attach-session -t "main"
    else
        exec arch -x86_64 tmux new-session -s "main"
    fi
fi
