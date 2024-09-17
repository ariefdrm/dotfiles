# set alias 
alias fishconfig='cd ~/.config/fish'
alias nvimconfig='cd ~/.config/nvim'
alias dotfiles="cd ~/.dotfiles"

# set alias for git 
alias gcm='git commit -m'
alias gsw='git switch'
alias gad='git add'
alias gadd='git add .'
alias glog1='git log --oneline'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gp='git push'
alias gco='git checkout'
alias gst='git status'

# set alias for exa ls replacement
alias ls='exa --icons'
alias ll='exa --icons -l'
alias lt='exa --icons --tree'

# export path
set -x LANGUAGE en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# alias fzf used to open multiple files with neovim
alias nvi='nvim $(fzf -m --preview="bat --color=always {}")'

if status is-interactive
    # Commands to run in interactive sessions can go here
oh-my-posh init fish --config "~/.config/fish/catppuccin.omp.json" | source

fzf --fish | source
end
