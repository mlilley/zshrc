# permit changing dirs without cd
setopt AUTO_CD

# enable completions
autoload -Uz compinit && compinit

# enable home/end keys (macos 11)
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# enable home/end keys (linux?)
#bindkey "^[[1~" beginning-of-line
#bindkey "^[[4~" end-of-line

# prompt
source $HOME/.zshprompt

alias ls="ls -Ga"
alias ll="ls -la"

# needed for git commit signing
export GPG_TTY=$(tty)
