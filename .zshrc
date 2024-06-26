# sourcing common setup file
source $HOME/.commonrc

# prepare agent when sshing
eval $(gpg-agent --daemon)
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

# remove mouse accel
defaults write .GlobalPreferences com.apple.mouse.scaling -1 
source <(fzf --zsh)

autoload -U colors && colors

# aliases for MacFuse with baigroup server
alias baifuse="sshfs baigroup:. ~/sshfs"
alias baiunfuse="diskutil unmount force ~/sshfs"

# dns flush 
alias dnsflush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# color prompt in terminal
PS1='%F{green}%n%f:%F{blue}%~%f$ '

# init zoxide
eval "$(zoxide init zsh --cmd cd)"

# init fzf
source <(fzf --zsh)

# brew stuff
eval "$(/usr/local/bin/brew shellenv)"

# force color binds with ll/ls
LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
