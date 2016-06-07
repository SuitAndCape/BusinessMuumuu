# .zshrc

####= SuitAndCape Zsh Run Commands
##============================================================================##

test -f "${ZSH_MODULES}"/.shell_setup && source "${ZSH_MODULES}"/.shell_setup
test -f "${ZSH_MODULES}"/.zsh_setup && source "${ZSH_MODULES}"/.zsh_setup
test -f "${ZSH_MODULES}"/.envrc && source "${ZSH_MODULES}"/.envrc
test -f "${ZSH_MODULES}"/.aliases && source "${ZSH_MODULES}"/.aliases
test -f "${ZSH_MODULES}"/.functions && source "${ZSH_MODULES}"/.functions
test -f "${ZSH_MODULES}"/.extra && source "${ZSH_MODULES}"/.extra

## Defining a shell theme, if it exists
test -f "${SHELL_THEMES}"/aesm && source "${SHELL_THEMES}"/aesm

## Zsh welcome message defined in $SHELL_THEMES/ file
echo -e "${LOGIN_WELCOME}"
