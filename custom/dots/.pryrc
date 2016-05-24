# .pryrc

####= SuitAndCape Pry Run Commands
##============================================================================##

## Awesome Print's formatting replaces Pry's default pretty printing
require 'awesome_print'
AwesomePrint.pry!

##== Pry Prompts ==============================================================#

## Loads custom Pry prompt mode
Pry.prompt = [
  ## Normal prompt
  proc { |elem, nest_level, pry|
    "\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[1;34m\002#{Pry.view_clip(elem)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}_\001\e[0;36m\002Pry\001\e[0m\002\001\e[0;35m\002>>\001\e[0m\002 "
  },
  ## Continuated string or statement prompt
  proc { |elem, nest_level, pry|
    "\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[1;34m\002#{Pry.view_clip(elem)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}_\001\e[0;36m\002Pry\001\e[0m\002\001\e[1;35m\002**\001\e[0m\002 "
  }
]

##== Pry Custom Methods =======================================================#

## `clr` – Screen clearing method
Pry.config.commands.alias_command 'clr', '.clear'

##== Pry Launch Report ========================================================#

puts "Clear Screen: \001\e[1;33m\002clr\001\e[0m\002, Exit Program: \001\e[1;33m\002exit\001\e[0m\002\n\n"
