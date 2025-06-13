# function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s%s > ' $USER $hostname \
#         (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
# end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    # atuin init fish | source
end

# INFO: Version 1 (commented out to avoid printing unwanted newline)
# if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
#     cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
# end

# INFO: Version 2 (send terminal sequences without trailing newline)
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    # Avoid printing trailing newline so prompt starts at the first line
    head -c -1 ~/.local/state/quickshell/user/generated/terminal/sequences.txt >/dev/tty
end

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# Inits de los plugins que necesitan
starship init fish | source # Prompt linda
zoxide init fish --cmd cd | source # Mejor cd

# INFO:
# La prompt default de fish

# # function fish_prompt
# #     set_color cyan
# #     echo (pwd)
# #     set_color green
# #     echo '> '
# # end
