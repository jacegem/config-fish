function peco_select_history
    if test (count $argv) = 0
        set peco_flags --layout=bottom-up
    else
        set peco_flags --layout=bottom-up --query "$argv"
    end

    history | peco $peco_flags | read line

    if test $line
        commandline $line
    else
        commandline ''
    end
end





# function peco_select_history
#     set -l query (commandline)
#     if test -n $query
#         set peco_flags --query "$query"
#     end

#     history | peco $peco_flags | read line
#     if test $line
#         commandline $line
#     else
#         commandline ''
#     end
# end
