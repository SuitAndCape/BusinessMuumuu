# .zshrc

####= SuitAndCape Zsh Run Commands
##============================================================================##

[ -f "${ZSH_MODULES}"/.zsh_setup ] && source "${ZSH_MODULES}"/.zsh_setup
[ -f "${ZSH_MODULES}"/.aliases ] && source "${ZSH_MODULES}"/.aliases
[ -f "${ZSH_MODULES}"/.functions ] && source "${ZSH_MODULES}"/.functions
[ -f "${ZSH_MODULES}"/.extra ] && source "${ZSH_MODULES}"/.extra
[ -f "${ZSH_MODULES}"/.extra.local ] && source "${ZSH_MODULES}"/.extra.local

## Defining a shell theme, if it exists
[ -f "${SHELL_THEMES}"/aesm ] && source "${SHELL_THEMES}"/aesm
