# .irbrc

####= SuitAndCape IRB Run Commands
##============================================================================##

## Ruby 1.8.7 compatible
require 'rubygems'

## Ruby autocompletion for IRB
require 'irb/completion'

## Pretty print using Awesome Print
begin
  require 'awesome_print'
  AwesomePrint.irb!
rescue LoadError => err
  puts 'IRB ' + "#{err}"
end

## Enable the Hirb mini view framework
begin
  require 'hirb'
  Hirb.enable
rescue LoadError => err
  puts 'IRB ' + "#{err}"
end

##== IRB Setup ================================================================#

## Allow 104,793 `irb` REPL entries to be stored in memory during a session
IRB.conf[:EVAL_HISTORY] = 104793

## Enable `irb` REPL history and set destination
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.history_irb"

## Allow 104,793 `irb` REPL history entries
IRB.conf[:SAVE_HISTORY] = 104793

##== IRB Commands =============================================================#

## `clr` – Clear the terminal emulator screen
def clr
  system('clear')
end

## `ext` – Quit/Exit the REPL
def ext
  exit
end

##== IRB Prompt Stylization ===================================================#

## SuitAndCape IRB prompt
if defined?(Rails)
  irb_rails = "\001\e[0;91m\002#{Rails.version}\001\e[0m\002\001\e[0;97m\002@\001\e[0m\002"
else
  irb_rails = ""
end
irb_prompt = "#{irb_rails}\001\e[0;31m\002#{RUBY_VERSION}\001\e[0m\002(\001\e[0;36m\002%m\001\e[0m\002)\001\e[0;35m\002IRB\001\e[0m\002"

## SuitAndCape IRB prompt configuration
IRB.conf[:PROMPT][:SUITANDCAPE] = {
  ## Standard prompt format
  PROMPT_I: "#{irb_prompt} :> ",
  ## Continuated string prompt format
  PROMPT_S: "#{irb_prompt} .. %l ",
  ## Continuated statement prompt format
  PROMPT_C: "#{irb_prompt} ** ",
  RETURN: "%s\n"
}

## Loads SuitAndCape IRB prompt mode (when uncommented)
IRB.conf[:PROMPT_MODE] = :SUITANDCAPE

## Loads simple IRB prompt mode, without RVM notice (when uncommented)
# IRB.conf[:PROMPT_MODE] = :SIMPLE
# IRB.conf[:AUTO_INDENT] = true

##== IRB Launch Report ========================================================#

puts "Clear Screen: \001\e[0;33m\002clr\001\e[0m\002, Exit Program: \001\e[0;33m\002ext\001\e[0m\002\n\n"
