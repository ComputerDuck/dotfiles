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
export COLORTERM="truecolor"

setopt appendhistory

# opam configuration
eval $(opam env)

if [[ "$TERM_PROGRAM" == "alacritty" || "$TERM_PROGRAM" == "ghostty" && -z "$TMUX" ]]; then
    if tmux has-session -t "main" 2>/dev/null; then
        exec arch -x86_64 tmux attach-session -t "main"
    else
        exec arch -x86_64 tmux new-session -s "main"
    fi
fi

bindkey -v
setopt noautocd

export PATH="/usr/local/anaconda3/bin:$PATH"
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/usr/local/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

