# .bashrc

####= SuitAndCape Bash Run Commands
##============================================================================##

[ -f "${BASH_MODULES}"/.bash_setup ] && source "${BASH_MODULES}"/.bash_setup
[ -f "${BASH_MODULES}"/.aliases ] && source "${BASH_MODULES}"/.aliases
[ -f "${BASH_MODULES}"/.functions ] && source "${BASH_MODULES}"/.functions
[ -f "${BASH_MODULES}"/.extra ] && source "${BASH_MODULES}"/.extra
[ -f "${BASH_MODULES}"/.extra.local ] && source "${BASH_MODULES}"/.extra.local

## Defining a shell theme, if it exists
[ -f "${SHELL_THEMES}"/aesm ] && source "${SHELL_THEMES}"/aesm
