require 'colorize'

def main_menu
  puts "\n*** Manpages For You ***".colorize(:color => :green)
  puts "1) Command Line Menu"
  puts "2) Search a Command"
  puts "3) Exit".colorize(:color => :red)
  puts "\nPick an Option. (1-3)\n"

  case user_input
    when '1'
      command_line_options
    when '2'
      search_command
    when '3', 'exit'
      puts "Thank you for checking out Manpages! Have a good day!".colorize(:color => :green)
      exit
  end
end

def command_line_options
  puts "\nCOMMAND LINE MENU".colorize(:color => :green)
  puts "1) whoami"
  puts "2) pwd"
  puts "3) ls"
  puts "4) cd"
  puts "5) mkdir"
  puts "6) rm"
  puts "7) mv"
  puts "8) Return to the Main Menu".colorize(:color => :red)
  puts "\nPick the command you want to learn about. (1-8)\n"

  case user_input
    when '1'
      puts `man whoami`
      command_line_options
    when '2'
      puts `man pwd`
      command_line_options
    when '3'
      puts `man ls`
      command_line_options
    when '4'
      puts `man cd`
      command_line_options
    when '5'
      puts `man mkdir`
      command_line_options
    when '6'
      puts `man rm`
      command_line_options
    when '7'
      puts `man mv`
      command_line_options
    when '8'
      main_menu
  end
end

def search_command
  puts "Search whatever command you would like!"
  user_search = user_input.to_s
  puts `man #{user_search}`
  puts "\nDo you want to search another command? (yes/no)".colorize(:color => :light_blue)
  if user_input == 'yes'
    search_command
  else
    main_menu
  end
end

def user_input
  print "> "
  gets.strip
end

main_menu
