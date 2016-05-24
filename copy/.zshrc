# .zshrc

####= SuitAndCape Zsh Run Commands
##============================================================================##

## Set the Homebrew maintained version of Zsh as the Login Shell, if it exists
if [[ -e "/usr/local/bin/zsh" ]]; then
  export SHELL=/usr/local/bin/zsh
else
  export SHELL=/bin/zsh
fi

export ZSH_MODULES="${HOME}"/shell-modules
export SHELL_THEMES="${HOME}"/shell-themes

test -f "${ZSH_MODULES}"/.sh_helpers && source "${ZSH_MODULES}"/.sh_helpers
test -f "${ZSH_MODULES}"/.zsh_setup && source "${ZSH_MODULES}"/.zsh_setup

test -f "${SHELL_THEMES}"/aesm && source "${SHELL_THEMES}"/aesm

test -f "${ZSH_MODULES}"/.exports && source "${ZSH_MODULES}"/.exports
test -f "${ZSH_MODULES}"/.envrc && source "${ZSH_MODULES}"/.envrc
test -f "${ZSH_MODULES}"/.completions && source "${ZSH_MODULES}"/.completions
test -f "${ZSH_MODULES}"/.aliases && source "${ZSH_MODULES}"/.aliases
test -f "${ZSH_MODULES}"/.functions && source "${ZSH_MODULES}"/.functions
test -f "${ZSH_MODULES}"/.extra && source "${ZSH_MODULES}"/.extra

## Zsh terminal welcome message defined in $SHELL_THEMES/ file
echo -e "${LOGIN_WELCOME}"
