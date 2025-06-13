# haskell la puta que te pario
set -gx PATH $HOME/.ghcup/bin $PATH

# cargo puto
set -gx PATH $HOME/.cargo/bin $PATH

# atuin trolo
set -gx PATH $HOME/.atuin/bin $PATH

# starship culiado
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# editores
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# para que subprocesos se den cuenta que soy fish
set -gx SHELL fish

# recordatorio cuando hago un comando que ya tiene un alias asignado
# colores heredados del tema de la terminal
set -l color_label "\e[1;33m"
set -l color_abbr "\e[1;32m"
set -l color_arrow "\e[0m\e[2m"
set -l color_cmd "\e[2;37m"
set -l color_reset "\e[0m"
# set -l emoji "💡"
set -l emoji "✨"
# set -l emoji "⚡"
set -gx ABBR_TIPS_PROMPT "\n$color_label" "$emoji" "Alias disponible:$color_abbr" "{{ .abbr }}" "$color_arrow-->" "$color_cmd{{ .cmd }}" "$color_reset"
