# prompt
autoload -Uz vcs_info
autoload -U colors && colors

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

zstyle ':vcs_info:*' enable git 
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:git:*' formats ' (%b)'

# 
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!' # signify new files with a bang
    fi
}

setopt PROMPT_SUBST
PROMPT="%B%{$fg[red]%}%n %{$fg_bold[green]%}➜ %{$fg[cyan]%}%~%{$reset_color%}"
PROMPT+="%B%F{yellow}\${vcs_info_msg_0_} "
