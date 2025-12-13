source /usr/share/cachyos-fish-config/cachyos-config.fish
source ~/.config/fish/alias.fish
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
direnv hook fish | source
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# awrit
#set --export PATH /home/sreenu/.local/bin $PATH
fish_add_path /home/sreenu/.local/bin 
fish_add_path /home/sreenu/go/bin 

# yazi shell integration
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/sreenu/.opam/opam-init/init.fish' && source '/home/sreenu/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
