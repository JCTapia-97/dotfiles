eval $(gpg-agent --daemon)
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

export PATH="/Users/work/.local/bin:$PATH"
export LD_LIBRARY_PATH="/Users/work/.local/lib:$LD_LIBRARY_PATH"

defaults write .GlobalPreferences com.apple.mouse.scaling -1 
source <(fzf --zsh)

USER="work"; export USER

autoload -U colors && colors
PS1='%F{green}%n%f:%F{blue}%~%f$ '
alias ls='ls --color=auto'
#export LS_COLORS="di=1;34:fi=0:*.txt=1;31:*.pdf=1;31"

alias ll="ls -halF"
alias baifuse="sshfs baigroup:. ~/sshfs"
alias baiunfuse="diskutil unmount force ~/sshfs"
alias packmol="~/Documents/packmol/packmol"
alias bai='rm mux* ; ssh baigroup'
alias vim=nvim
alias dnsflush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

eval "$(zoxide init zsh --cmd cd)"
 
alias config='/usr/bin/git --git-dir=/Users/work/.cfg/ --work-tree=/Users/work'
eval "$(/usr/local/bin/brew shellenv)"
 
ssh() {
  tmux rename-window "$*"
  command ssh "$@" -X
  tmux rename-window "zsh"
}
