# .bash_profile

####= SuitAndCape Bash Shell Environment
##============================================================================##

## Set the Homebrew maintained version of Bash as the Login Shell, if it exists
if [[ -e "/usr/local/bin/bash" ]]; then
  export SHELL=/usr/local/bin/bash
else
  export SHELL=/bin/bash
fi

export BASH_MODULES="${HOME}"/shell-modules
export SHELL_THEMES="${HOME}"/shell-themes

[ -f "${BASH_MODULES}"/.inspectors ] && source "${BASH_MODULES}"/.inspectors
[ -f "${BASH_MODULES}"/.exports ] && source "${BASH_MODULES}"/.exports
[ -f "${BASH_MODULES}"/.exports.local ] && source "${BASH_MODULES}"/.exports.local

## Load $HOME/.bashrc, if it exists
[ -f "${HOME}"/.bashrc ] && source "${HOME}"/.bashrc
