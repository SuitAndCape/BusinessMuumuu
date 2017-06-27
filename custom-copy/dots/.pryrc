# .pryrc

####= SuitAndCape Pry Run Commands
##============================================================================##

## Ruby 1.8.7 compatible
require 'rubygems'

## Enable IRB settings
require 'irb'

## Ruby autocompletion for Pry via IRB
require 'irb/completion'

## Pretty print using Awesome Print
begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => err
  puts 'Pry ' + "#{err}"
end

## Enable the Hirb mini view framework
begin
  require 'hirb'
  Hirb.enable
rescue LoadError => err
  puts 'Pry ' + "#{err}"
end

##== Pry Setup ================================================================#

## Enable UTF-8 encoding
Encoding.default_external = "UTF-8"

## Allow 104,793 `pry` REPL entries to be stored in memory during a session
IRB.conf[:EVAL_HISTORY] = 104793

## Enable `pry` REPL history and set destination
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.history_pry"

## Allow 104,793 `pry` REPL history entries
IRB.conf[:SAVE_HISTORY] = 104793

##== Pry Commands =============================================================#

## `clr` – Clear the terminal emulator screen
Pry.config.commands.alias_command 'clr', '.clear'

## `ext` – Quit/Exit the REPL
Pry.config.commands.alias_command 'ext', 'exit'

##== Pry Prompt Stylization ===================================================#

## SuitAndCape Pry prompt
if defined?(Rails)
  pry_rails = "\001\e[0;91m\002#{Rails.version}\001\e[0m\002\001\e[0;97m\002@\001\e[0m\002"
else
  pry_rails = ""
end

## Loads SuitAndCape Pry prompt mode
Pry.prompt = [
  ## Standard prompt format
  proc { |obj, nest_level, pry|
    "#{pry_rails}\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[0;36m\002#{Pry.view_clip(obj)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}\001\e[0;35m\002Pry\001\e[0m\002 :> "
  },
  ## Continuated string or statement prompt format
  proc { |obj, nest_level, pry|
    "#{pry_rails}\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[0;36m\002#{Pry.view_clip(obj)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}\001\e[0;35m\002Pry\001\e[0m\002 -- "
  }
]

##== Pry Launch Report ========================================================#

puts "Clear Screen: \001\e[0;33m\002clr\001\e[0m\002, Exit Program: \001\e[0;33m\002ext\001\e[0m\002\n\n"
