# .bash_profile

####= SuitAndCape Bash Profile
##============================================================================##

## Set the Homebrew maintained version of Bash as the Login Shell, if it exists
if [[ -e "/usr/local/bin/bash" ]]; then
  export SHELL=/usr/local/bin/bash
else
  export SHELL=/bin/bash
fi

export BASH_MODULES="${HOME}"/shell-modules
export SHELL_THEMES="${HOME}"/shell-themes

test -f "${BASH_MODULES}"/.sh_helpers && source "${BASH_MODULES}"/.sh_helpers
test -f "${BASH_MODULES}"/.bash_setup && source "${BASH_MODULES}"/.bash_setup

test -f "${SHELL_THEMES}"/aesm && source "${SHELL_THEMES}"/aesm

test -f "${BASH_MODULES}"/.exports && source "${BASH_MODULES}"/.exports
test -f "${BASH_MODULES}"/.envrc && source "${BASH_MODULES}"/.envrc
test -f "${BASH_MODULES}"/.aliases && source "${BASH_MODULES}"/.aliases
test -f "${BASH_MODULES}"/.functions && source "${BASH_MODULES}"/.functions
test -f "${BASH_MODULES}"/.extra && source "${BASH_MODULES}"/.extra

## Bash terminal welcome message defined in $SHELL_THEMES/ file
echo -e "${LOGIN_WELCOME}"
