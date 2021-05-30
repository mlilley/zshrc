# permit changing dirs without cd
setopt AUTO_CD

# enable completions
autoload -Uz compinit && compinit

# enable home/end keys
#bindkey "^[[1~" beginning-of-line
#bindkey "^[[4~" end-of-line
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# prompt
source $HOME/.zshprompt

alias ls="ls -G"
alias ll="ls -la"
alias conv="for f in *.flac; do; ffmpeg -i \"\$f\" -acodec alac -map 0:0 \"\${f%.flac}.m4a\"; done"
