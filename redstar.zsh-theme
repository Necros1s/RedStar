eval my_black='$FG[000]'
eval my_grey_bg='$BG[008]'
eval my_grey='$FG[008]'
eval my_pink='$FG[013]'
eval my_black_bg='$BG[000]'
local ret_status="%{$my_black%}%{$my_black_bg%}%{$fg_bold[cyan]%}%{$reset_color%}%{$my_grey_bg%}%{$my_cyan%}%~%{$reset_color%}%{$my_grey%} "
PROMPT='${ret_status} %{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

