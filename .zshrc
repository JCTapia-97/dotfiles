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
 
# ssh rebind to change tmux name when sshing
ssh() {
  tmux rename-window "$*"
  command ssh "$@" -X
  tmux rename-window "zsh"
}
