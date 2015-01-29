require 'minitest'
require 'pry'

#Creating Hash using recursive User input

#Enter multiple players
  #Hash with Array as value for scores/names

#Find out who is playing


def how_many_players
  scoreboard = {}
  player_names = []

#add check for at least 2 players
  puts "Please add a player name."
  player = gets.chomp 
  puts "You entered #{player}."
  puts " "
  
  puts "To add another player, press \"a\". To start the game, press \"s\"."
  action = gets.chomp
    if action == "a"
      player_names.push(player)
      how_many_players
    elsif action == "s"
      player_names.each do |name|d
      scoreboard[name] = 0
      end
      puts scoreboard
      puts 
      puts
      puts "Let's play!"
      #call player_turn
    else
      puts "I did not understand. Please try again."
      how_many_players
    end
  return scoreboard
end



def scoreboard_func
  scoreboard
end

how_many_players


=begin
#Is this correct?

puts scoreboard
puts
#Confirms number of players
puts "You have entered _#{# Keys in Hash}_ players. Continue? Y/N?"
  if "y"
    #Call player turn
  elsif "n"
    puts "Goodbye!"
  else
    puts "Your answer does not compute. Please try again"
  end #Until Answer = Yes or No, repeat ask? Or exit game here?

  #Enter player name 
  #Start Game or Add Player
  #Player name => Key in Hash
  #Check Hash has at least 2 keys
  #Return Hash?
=end
  