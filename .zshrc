setopt AUTO_CD
setopt PROMPT_SUBST

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

__prompt_awesome_time_bg="#e12525"
__prompt_awesome_time_txt="#ffff00"
__prompt_awesome_path_bg="#901f19"
__prompt_awesome_path_txt="#ffffff"
__prompt_awesome_git_bg="#303030"
__prompt_awesome_git_txt_clean="#00ff00"
__prompt_awesome_git_txt_dirty="#ff0000"

function __prompt_awesome_git_status() {
  local b=`/usr/local/bin/git symbolic-ref HEAD --short 2> /dev/null`
  if [[ -n "$b" ]]; then
    [[ -z `/usr/local/bin/git status --porcelain 2> /dev/null` ]] && echo "%F{$__prompt_awesome_git_txt_clean}$b" || echo "%F{$__prompt_awesome_git_txt_dirty}$b"
  fi
}

function __prompt_awesome() {
  local t="%F{#000000}%K{$__prompt_awesome_time_bg} %F{$__prompt_awesome_time_txt}%T "
  local p="%F{$__prompt_awesome_time_bg}%K{$__prompt_awesome_path_bg} %F{$__prompt_awesome_path_txt}%~ "
  local g=""
  local _g="$(__prompt_awesome_git_status)"
  [[ -n "$_g" ]] && g="%F{$__prompt_awesome_path_bg}%K{$__prompt_awesome_git_bg} $_g " || g=""
  local fin=""
  [[ -n "$_g" ]] && f="%F{$__prompt_awesome_git_bg}%K{$__prompt_awesome_path_bg}%F{$__prompt_awesome_path_bg}%k" || f="%F{$__prompt_awesome_path_bg}%k"
  echo "$t$p$g$f %F{#ffffff}%B"
}

preexec () { echo -ne "\e[0m" }
PROMPT='$(__prompt_awesome)'

[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.npm/bin" ] && PATH="$HOME/.npm/bin:$PATH"

alias ls="ls -Gh"
alias grep="grep --color=always"

