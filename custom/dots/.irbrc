# .irbrc

####= SuitAndCape IRB Run Commands
##============================================================================##

## Auto-completion for method names and more
require 'irb/completion'

## Awesome Print's formatting replaces IRB's default pretty printing
require 'awesome_print'
AwesomePrint.irb!

##== IRB Prompts ==============================================================#

## Loads simple IRB prompt mode, without RVM notice (when uncommented)
# IRB.conf[:PROMPT_MODE] = :SIMPLE
# IRB.conf[:AUTO_INDENT] = true

## Lines of IRB history recorded
IRB.conf[:SAVE_HISTORY] = 1000

## Loads custom IRB prompt mode, without RVM notice (when uncommented)
IRB.conf[:PROMPT][:SUITANDCAPE] = {
  # AUTO_INDENT: true,
  ## Normal prompt
  PROMPT_I: "\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[1;34m\002%m\001\e[0m\002)_\001\e[0;36m\002IRB\001\e[0m\002\001\e[0;35m\002>>\001\e[0m\002 ",
  ## Continuated string prompt
  PROMPT_S: "\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[1;34m\002%m\001\e[0m\002)_\001\e[0;36m\002IRB\001\e[0m\002\001\e[1;35m\002**\001\e[0m\002 %l ",
  ## Continuated statement prompt
  PROMPT_C: "\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[1;34m\002%m\001\e[0m\002)_\001\e[0;36m\002IRB\001\e[0m\002\001\e[1;35m\002**\001\e[0m\002 ",
  RETURN: "%s\n"
}

## Default prompt mode
IRB.conf[:PROMPT_MODE] = :SUITANDCAPE

##== IRB Custom Methods =======================================================#

## `clr` – Screen clearing method
def clear_screen
  system('clear')
end
alias clr clear_screen

##== IRB Launch Report ========================================================#

puts "Clear Screen: \001\e[1;33m\002clr\001\e[0m\002, Exit Program: \001\e[1;33m\002exit\001\e[0m\002\n\n"
