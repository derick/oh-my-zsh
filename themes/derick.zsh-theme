# Colors
autoload -U colors
colors
setopt prompt_subst

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

# local testing="%(true,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"
# if [[ $(git-current-branch) && $? ]]; then testing="%{$fg[green]%}☺%{$reset_color%}"; else testing=%{$fg[red]%}☺%{$reset_color%}; fi

# RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(git-cwd-info)%{$reset_color%}'
# RPROMPT='%{$fg_bold[grey]%}$(rvm_prompt_info || rbenv_prompt_info)'


PROMPT='
%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$reset_color%}%{$fg[cyan]%}% $(PWD) %{$fg_bold[grey]%}$(rvm_prompt_info || rbenv_prompt_info) %{$reset_color%}%{$fg[red]%}$(git-current-branch)%{$fg_bold[grey]%}:$(git_prompt_short_sha)%{$fg_bold[blue]%} % %{$reset_color%} 
${smiley}  %{$reset_color%} $(parse_git_dirty)%{$reset_color%}  '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}✗✗✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[white]%}☃ ☃"




# grey='\e[0;90m'
# 
# ZSH_THEME_GIT_PROMPT_PREFIX="%{$grey%}("
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$grey%}) %{$fg[yellow]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$grey%})"
# 
# function josh_prompt {
#   (( spare_width = ${COLUMNS} ))
#   prompt=" "
# 
#   branch=$(current_branch)
#   ruby_version=$(rvm_prompt_info || rbenv_prompt_info)
#   path_size=${#PWD}
#   branch_size=${#branch}
#   ruby_size=${#ruby_version}
#   user_machine_size=${#${(%):-%n@%m-}}
#   
#   if [[ ${#branch} -eq 0 ]]
#     then (( ruby_size = ruby_size + 1 ))
#   else
#     (( branch_size = branch_size + 4 ))
#     if [[ -n $(git status -s 2> /dev/null) ]]; then
#       (( branch_size = branch_size + 2 ))
#     fi
#   fi
#   
#   (( spare_width = ${spare_width} - (${user_machine_size} + ${path_size} + ${branch_size} + ${ruby_size}) ))
# 
#   while [ ${#prompt} -lt $spare_width ]; do
#     prompt=" $prompt"
#   done
#   
#   prompt="%{%F{green}%}$PWD$prompt%{%F{red}%}$(rvm_prompt_info || rbenv_prompt_info)%{$reset_color%} $(git_prompt_info)"
#   
#   echo $prompt
# }
# 
# setopt prompt_subst
# 
# PROMPT='
# %n@%m $(josh_prompt)
# %(?,%{%F{green}%},%{%F{red}%})⚡%{$reset_color%} '