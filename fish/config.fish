source /usr/share/cachyos-fish-config/cachyos-config.fish
source ~/.config/fish/alias.fish
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
