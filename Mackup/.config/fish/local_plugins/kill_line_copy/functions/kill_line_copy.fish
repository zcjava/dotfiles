# use Ctrl+K cut commandline to clipboard like emacs

function kill_line_copy
    set -l line (commandline -t)
    if test -n "$line"
        # macOS
        if type -q pbcopy
            echo -n $line | pbcopy
            # Linux X11
        else if type -q xclip
            echo -n $line | xclip -selection clipboard
            # Linux Wayland
        else if type -q wl-copy
            echo -n $line | wl-copy
        else
            echo "No clipboard utility found (pbcopy, xclip, wl-copy)"
            return
        end
        commandline -f kill-line
    end
end
