autoload -Uz vcs_info
autoload -U colors && colors

# Enable git and set formats
zstyle ':vcs_info:git:*' formats ' (%b%u)'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git*' max-exports 2
zstyle ':vcs_info:git:*' enable git
# Add caching
zstyle ':vcs_info:git:*' use-simple true

function async_git_info() {
    if cd -q $1 2>/dev/null; then
        vcs_info 2>/dev/null
        print ${vcs_info_msg_0_}
    fi
}

function precmd() {
    if [[ -z $ASYNC_PROC ]]; then
        async_start_worker vcs_info
        async_register_callback vcs_info git_info_callback
    fi
    
    # Only run if we're in a valid directory
    if [[ -d "$PWD" ]]; then
        async_job vcs_info async_git_info $PWD
    fi
}

function git_info_callback() {
    PROMPT="%B%{$fg[red]%}%n %{$fg_bold[green]%}➜ %{$fg[cyan]%}%~%{$reset_color%}%b"
    PROMPT+="%B%F{yellow}$3%f%b"
    PROMPT+=" "
    zle reset-prompt
}
