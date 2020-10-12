export ZDOTDIR="$HOME/.zsh/"
export CONFIG="$HOME/.config/"
export RTV_BROWSER=surf
export RTV_EDITOR=vim
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export LANG=en_US.UTF-8

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH 
