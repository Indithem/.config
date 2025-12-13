alias ghci="~/.ghcup/ghc/9.4.8/ghci"
alias ghc="~/.ghcup/ghc/9.4.8/ghc"

# get colorful output
alias less  "less -R"
# alias watch  "watch --color"
# alias less bat
# alias cat bat
alias move_last_download_to 'mv -v (find ~/Downloads/ -type f -cmin -60 | /bin/eza --color=never -rscreated --only-files --absolute --stdin)'
alias ls="ls --color --group-directories-first --hyperlink=auto -h"
alias eza="eza --hyperlink"
alias println="printf %s\n"
alias iperf3 "iperf3 -f M"
alias qalc "env LC_MONETARY=en_IN.UTF-8 qalc"

alias cargodbg "CARGO_PROFILE_DEV_CODEGEN_BACKEND=cranelift cargo +nightly -Zcodegen-backend"
alias j="just"
#function cdmkdir
#    mkdir -p $argv[1]
#    cd $argv[1]
#end
alias cdmkdir 'mkdir -p $argv[1];cd '
function script_sysmountstart -d 'systemctl --user start mount@$(systemd-escape -- $argv[1])'
    systemctl --user start mount@$(systemd-escape -- $argv[1])
end
function script_sysmountstatus -d 'systemctl --user status mount@$(systemd-escape -- $argv[1])'
    systemctl --user status mount@$(systemd-escape -- $argv[1])
end

#alias zigup "zigup --install-dir /home/sreenu/zig/compilers"
#alias emacs "emacs -nw"
alias codium "codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
alias codium "codium --ozone-platform-hint=auto"
alias code "code --ozone-platform-hint=auto"



for m in ~/.config/fish/scripts/*
	alias "script_"$(string split scripts/ $m)[2] $m
end


set ALARM_IP 169.254.181.191
set -x EDITOR /usr/bin/nvim
set -x PAGER /usr/bin/bat
