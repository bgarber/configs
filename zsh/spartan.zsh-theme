function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

#THIS IS SPARTA!!!
PROMPT='%{$fg_bold[blue]%}[%m] %{$fg_bold[white]%}%n %{$fg_bold[green]%}%1~%_$(prompt_char)%{$reset_color%} '

