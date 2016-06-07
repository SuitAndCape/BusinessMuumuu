# .bashrc

####= SuitAndCape Bash Run Commands
##============================================================================##

test -f "${BASH_MODULES}"/.shell_setup && source "${BASH_MODULES}"/.shell_setup
test -f "${BASH_MODULES}"/.bash_setup && source "${BASH_MODULES}"/.bash_setup
test -f "${BASH_MODULES}"/.envrc && source "${BASH_MODULES}"/.envrc
test -f "${BASH_MODULES}"/.aliases && source "${BASH_MODULES}"/.aliases
test -f "${BASH_MODULES}"/.functions && source "${BASH_MODULES}"/.functions
test -f "${BASH_MODULES}"/.extra && source "${BASH_MODULES}"/.extra

## Defining a shell theme, if it exists
test -f "${SHELL_THEMES}"/aesm && source "${SHELL_THEMES}"/aesm

## Bash terminal welcome message defined in $SHELL_THEMES/ file
echo -e "${LOGIN_WELCOME}"
