# export path
set -U DOTNET_ROOT $HOME/.dotnet
set -U csharp_ls $HOME/.dotnet/tools
set -U DOTNET_RUNTIME $HOME/.dotnet/shared/

# set alias 
alias fishconfig='cd ~/.config/fish'
alias nvimconfig='cd ~/.config/nvim'
alias nvi='nvim $(fzf -m --preview="bat --color=always {}")' # alias fzf used to open multiple files with neovim
alias dotfiles="cd ~/.dotfiles"

# set alias for git 
alias gcm='git commit -m'
alias gsw='git switch'
alias gad='git add'
alias gada='git add .'
alias glg1='git log --oneline --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gpu='git push'
alias gco='git checkout'
alias gst='git status'

# set alias for exa ls replacement
alias ls='exa --icons'
alias ll='exa --icons -l'
alias lt='exa --icons --tree'

# Set alias for mariadb database
alias mysql='mariadb -uarief -p'

# export path
set -x LANGUAGE en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

if status is-interactive
    # Commands to run in interactive sessions can go here
oh-my-posh init fish --config "~/.config/fish/catppuccin.omp.json" | source

fzf --fish | source
end
