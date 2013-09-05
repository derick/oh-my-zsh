## Navigation Aliases
alias c="cd"
alias cu="cd ../"
alias cuu="cd ../../"



# Project/Directory specific Navigation Aliases
alias upd="cd ~/rails_apps/updated_sites/"

# scimed
alias sci="cd ~/ScimedApps/"

alias temp="cd ~/ScimedApps/tempus"
alias tempus="cd ~/ScimedApps/tempus"
alias status="cd ~/ScimedApps/status"
alias eq="cd ~/ScimedApps/eqapol"
alias td="cd ~/ScimedApps/temptd"
alias temptd="cd ~/ScimedApps/temptd"
alias aec="cd ~/ScimedApps/system_vision"
alias sun="cd ~/ScimedApps/sunteck_rails"
alias curvita="cd ~/ScimedApps/curvita"
alias cur="cd ~/ScimedApps/curvita"
alias chicago="cd ~/ScimedApps/curvita_chicago_engine"
alias chi="cd ~/ScimedApps/curvita_chicago_engine"
alias harvard="cd ~/ScimedApps/curvita_harvard_engine"
alias har="cd ~/ScimedApps/curvita_harvard_engine"

# cisco
alias honey="cd ~/HoneyBadger"
alias main="cd ~/HoneyBadger/hb_main"
alias cas="cd ~/HoneyBadger/hb_case-svc"
alias order="cd ~/HoneyBadger/hb_order-svc"
alias sample="cd ~/HoneyBadger/hb_sample_global_config"

# personal
alias football="cd ~/rails_apps/updated_sites/footballin"
alias shrink="cd ~/rails_apps/updated_sites/shrinkify"
alias twit="cd ~/rails_apps/updated_sites/twitdd"
alias hi5="cd ~/Dropbox/high5labs"


# Program/Command Aliases
alias v="vagrant"
alias r="rails"
alias m="mate"

# export GEMEDITOR="mate -w"
# export VISUAL="mate -w"
# export EDITOR="mate -w"
export GEMEDITOR="subl -w"
export VISUAL="subl -w"
export EDITOR="subl -w"



# Tools Aliases
alias hg="history | grep"
alias be="bundle exec"

# Show files ignored by git:
alias gign="git ls-files -o -i --exclude-standard"


# rails logs, tailing and cleaning
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'


# overwrite from rails.plugin.zsh
alias ss='ruby script/server'
alias sd='ruby script/destroy'



# overwrite/add to git.plugin.zsh
alias ga='git add'
compdef _git ga=git-add
alias gap='git add -p'
alias gf='git fetch'

# various types of logging
# alias gl='git log --oneline --graph --decorate'
# compdef _git gl=git-log

alias ghist='git log --pretty=format:"%h %ad | %s%d" --graph --date=short'
# alias ghist='echo "\n" && git log --graph --oneline --decorate'
compdef _git ghist=git-log

alias gadam='echo "\n" && git log --graph --pretty=format:"%ad%Cred %h%Cgreen %Creset | %s%Cgreen %d" --date=relative'
compdef _git gadam=git-log

# taken from http://coderwall.com/p/euwpig?i=3&p=1&t=git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset %Cgreen(%cr)%C(cyan) %cn %C(yellow)%d %Creset %s %C(magenta)%Creset' --abbrev-commit"

alias glreload="git reset HEAD app/views/layouts/_after_layout.rhtml"
alias gtype='git cat-file -t'
alias gdump='git cat-file -p'
alias gx='gitx --all'
alias gd='git diff'
alias gdm='git diff | mate'
alias gdsm='git diff --staged | mate'
alias gdcm='git diff --staged | mate'
alias gs='git status -s'
alias gm='git merge'
alias gf='git fetch'



# overwrite/add to git-flow.plugin.zsh
alias gffs="git flow feature start"
alias gfff="git flow feature finish"


## pager
# export PAGER=less
# DAH switched this 2/19/2012 as per http://apple.stackexchange.com/questions/14524/how-to-view-man-pages-in-a-web-browser
# export PAGER="col -b | open -a /Applications/Chrome.app -f"

# custom scripts stored in ~/bin and possibly created by DAH
alias gds="git-diff-single"
alias gbrt="git-branch-time" # this is from the peepcode adv git vid
alias gbrta="git-branch-time --all" # this is from the peepcode adv git vid
