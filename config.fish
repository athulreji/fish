if status is-interactive
    # Commands to run in interactive sessions can go here
end

function dev
	cd /mnt/c/dev
end

function xtsl
    tmux new -s XTSLinux -c /mnt/c/dev/XTS_LinuxAgent
end

function xs
    tmux new -s XSight -c /mnt/c/dev/XSight_WindowsLinuxAgents
end

function xtsw
    tmux new -s XTSWin -c /mnt/c/dev/XTS_WindowsAgent
end

function fishconf
    tmux new -s FishConf -c ~/.config/fish
end

function tmuxconf
    tmux new -s TmuxConf -c ~/.config/tmux
end

function nvconf
    tmux new -s NvimConf -c ~/.config/nvim
end

function start-ssh
    # Start ssh-agent if not running
    if not pgrep ssh-agent > /dev/null
        eval (ssh-agent -c) > /dev/null
    end

    # Add your SSH key if not already loaded
    if not ssh-add -l >/dev/null 2>&1
        ssh-add ~/.ssh/id_ed25519
    else
        echo "SSH key already loaded."
    end
end
