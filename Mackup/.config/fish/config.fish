if status is-interactive
    # Commands to run in interactive sessions can go here
    bass source ~/.bash_profile

    starship init fish | source

    alias ls "ls -G"

    # use ctrl+c copy seleted search history 
    set fzf_history_opts --bind "ctrl-c:execute-silent(printf '%s\n' {+} | string replace --all --regex '^.*? │ ' '' | fish_clipboard_copy)+abort"
end
