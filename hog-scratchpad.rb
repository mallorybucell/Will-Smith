require 'minitest'
require 'pry'

#Creating Hash using recursive User input

#Enter multiple players
  #Hash with Array as value for scores/names

#Find out who is playing
# Array for names
# Array for scores
#Player counter
#Array of hashes- score and name name: xx, score: xx  array of hashes.
# Array for total scores (b/c hash will overwrite)

require 'minitest'
require 'pry'
#Creating Hash using recursive User input
#Enter multiple players
#Hash with Array as value for scores/names
#Find out who is playing
# Array for names
# Array for scores
#Player counter
#Array of hashes- score and name name: xx, score: xx array of hashes.
# Array for total scores (b/c hash will overwrite)
require 'minitest'
require 'pry'

#Creating Hash using recursive User input

#Enter multiple players
  #Hash with Array as value for scores/names

#Find out who is playing
# Array for names
# Array for scores
#Player counter
#Array of hashes- score and name name: xx, score: xx  array of hashes.
# Array for total scores (b/c hash will overwrite)

def how_many_players
  scoreboard = {}
  player_names = player_names + player_names || []

#add check for at least 2 players
  #puts "Please add a player name:"
  #player = gets.chomp 
  #player_names.push(player)
  #puts "You entered #{player}."
  #puts
  puts "To add \(another\) player, press \"a\". To start the game, press \"s\"."
  action = gets.chomp
    while action == "a"
      puts "Please add a player name:"
      player = gets.chomp 
      player_names.push(player)
      puts "You entered #{player}."
binding.pry
      how_many_players
    elsif action == "s"
      player_names.each do |name|
      scoreboard[name] = 0
      end
      puts 
      puts
      puts scoreboard
      puts
      puts "Let's play!"
      #call player_turn
    else
      #puts "I did not understand. Please try again."
      #puts "To add another player, press \"a\". To start the game, press \"s\"."
      #how_many_players
    end
  return scoreboard
binding.pry
end



def scoreboard_func
  return scoreboard
end

puts "Welcome to Hog! You need at least 2 players to play."
puts
puts
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
  



#def how_many_players
 

#add check for at least 2 players
  #puts "Please add a player name:"
  #player = gets.chomp 
  #player_names.push(player)
  #puts "You entered #{player}."
  #puts


=begin
names = []
puts: "Type \'a\' to add a player. Type '\s'\ to start the game."
response = gets.chomp
until response == "s"
  names << player
  puts "You entered #{player}."
  puts
  end
end
scoreboard = {}
names.each do |name|
  scoreboard[name] = 0
  end
puts 
puts
puts scoreboard
puts
puts "Let's play!"
      #call player_turn
    #else
      #puts "I did not understand. Please try again."
      #puts "To add another player, press \"a\". To start the game, press \"s\"."
      #how_many_players
return scoreboard
binding.pry
end


def scoreboard_func
  return scoreboard
end

puts "Welcome to Hog! You need at least 2 players to play."

how_many_players



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
  