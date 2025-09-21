# fzf_copy_history
# ctrl+c copy selected command to clipboard
# enter  copy selected command to commandline

function fzf_expand_copy_history
    set -l cmds (builtin history | fzf --multi \
            --height=80% \
            --layout=reverse \
            --border \
            --bind "ctrl-c:execute-silent(printf '%s\n' {+} | fish_clipboard_copy)+abort" )
    if test -z "$cmds"
        commandline -f repaint
    else
        commandline -r (string join \n $cmds)
    end
end
