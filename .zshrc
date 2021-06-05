# permit changing dirs without cd
setopt AUTO_CD

# enable completions
autoload -Uz compinit && compinit

# enable home/end keys (macos 11)
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# enable home/end keys (ubuntu?)
#bindkey "^[[1~" beginning-of-line
#bindkey "^[[4~" end-of-line

# prompt
source $HOME/.zshprompt

alias ls="ls -G"
alias ll="ls -la"

