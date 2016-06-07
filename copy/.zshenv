# .zshenv

####= SuitAndCape Zsh Shell Environment
##============================================================================##

## Set the Homebrew maintained version of Zsh as the Login Shell, if it exists
if [[ -e "/usr/local/bin/zsh" ]]; then
  export SHELL=/usr/local/bin/zsh
else
  export SHELL=/bin/zsh
fi

export ZSH_MODULES="${HOME}"/shell-modules
export SHELL_THEMES="${HOME}"/shell-themes

test -f "${ZSH_MODULES}"/.inspectors && source "${ZSH_MODULES}"/.inspectors
test -f "${ZSH_MODULES}"/.exports && source "${ZSH_MODULES}"/.exports
