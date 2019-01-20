require 'launchy'

def check_if_user_gave_input
  abort("write your google research after the command \"ruby google_searcher.rb\" ;)") if ARGV.empty?
 
  array = (ARGV)
  array = array.join('+')
  
  Launchy.open("https://www.google.com/search?q=#{array}")

 end
 

check_if_user_gave_input





