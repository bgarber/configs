function prompt_char() {
    if [[ $UID -eq 0 ]]; then
        echo "#";
    else
        echo "$";
    fi
}

#THIS IS SPARTA!!!
PROMPT="%{$fg_bold[blue]%}[%m] %{$fg_bold[white]%}%n %{$fg_bold[green]%}%~"
PROMPT+='$(git_prompt_info)'
PROMPT+="%{$fg_bold[green]%}$(prompt_char)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%1{✗%}%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
