require 'colorize'
def main
  puts "Welcome to Palindrome Checker!"
  puts "What phrase would you like to check?"
  selection = gets.strip.downcase.delete(' ')
  check_palindrome2(selection)
end

def check_palindrome2(selection)
  selection2 = selection.split("")
  selection3 = []
  selection3 << selection2.pop until selection2.empty?
  if selection == selection3.join
    puts "#{selection} is a Palindrome".colorize(:green)
  else
    puts "#{selection} is not a Palindrome".colorize(:red)
  end
end

while true
  main
end
