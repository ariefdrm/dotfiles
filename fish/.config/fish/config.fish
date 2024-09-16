# set alias 
alias fishconfig="cd ~/.config/fish"
alias nvimconfig="cd ~/.config/nvim"
alias gc="git commit -m"

# export path
set -x LANGUAGE en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8


if status is-interactive
    # Commands to run in interactive sessions can go here
  oh-my-posh init fish --config "~/.config/fish/catppuccin.omp.json" | source
end
