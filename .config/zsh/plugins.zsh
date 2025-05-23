##

## Plugins
##

# Configure and load plugins using Zinit's
ZINIT_HOME="${ZINIT_HOME:-${XDG_DATA_HOME:-${HOME}/.local/share}/zinit}"

# Added by Zinit's installer
if [[ ! -f ${ZINIT_HOME}/zinit.git/zinit.zsh ]]; then
    print -P "%F{14}▓▒░ Installing Flexible and fast ZSH plugin manager %F{13}(zinit)%f"
    command mkdir -p "${ZINIT_HOME}" && command chmod g-rwX "${ZINIT_HOME}"
    command git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}/zinit.git" && \
        print -P "%F{10}▓▒░ Installation successful.%f%b" || \
        print -P "%F{9}▓▒░ The clone has failed.%f%b"
fi

source "${ZINIT_HOME}/zinit.git/zinit.zsh"

zinit ice blockf atpull'zinit creinstall -q .'
zinit light zsh-users/zsh-completions
zinit light-mode for \
  MichaelAquilina/zsh-you-should-use \
  Aloxaf/fzf-tab \
  zdharma-continuum/fast-syntax-highlighting \
  hlissner/zsh-autopair \
  zsh-users/zsh-autosuggestions

zinit ice wait'3' lucid
zinit light zsh-users/zsh-history-substring-search

zinit ice wait'2' lucid
zinit light zdharma-continuum/history-search-multi-word

# FZF
zinit ice from"gh-r" as"command"
zinit light junegunn/fzf-bin

# EXA
zinit ice wait lucid from"gh-r" as"program" mv"bin/exa* -> exa"
zinit light ogham/exa

# BAT
zinit ice wait lucid from"gh-r" as"program" mv"*/bat -> bat" "

# atload"export BAT_THEME='Nord'

zinit light sharkdp/bat

# Plugins
zinit light sharkdp/bat

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# Autocompletado
autoload -U compinit

# jj completion (se carga antes de compinit)
source <(jj util completion zsh)

# Inicializar completado (usa caché)
compinit -d ~/.zcompdump

# vim:ft=zsh
