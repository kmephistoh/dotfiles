if status is-interactive
    # Commands to run in interactive sessions can go here
   set -gx ATUIN_NOBIND "true"
   atuin init fish | source
   bind \cr _atuin_search
end

function fish_greeting
end
