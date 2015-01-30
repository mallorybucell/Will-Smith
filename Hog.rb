require 'minitest'
require 'pry'



#Ask Player how many dice to roll
  #?? Check to make sure user put in a valid number.
def player_turn
  puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
  ndice = gets.chomp
  puts "You are rolling #{ndice} dice."
  ndice.times do |roll|
    roll = rand(1..6)
    print roll, " "
  end

  if #any die returns 1, 
    puts "Oh no! Your turn is over. You do not get any points." #Make sure this goes to player.next turn
    #turn score = 0
    #call check_total_scores
  else
    puts "You rolled {Array}. You have #{turn_score} points for this turn. Do you want to roll again? Y/N?"
      if yes
        #store turn_score for player in player's 
      else
        #Add turn_score to player's total_points
        puts "You scored {turn_score} for this turn."
      end
  end
  return turn_score
end



namescore_pair = []
allnames = []
max_score = 100
scoreboard = {}

puts "Welcome to Hog! This version of the game is played with 6-sided dice and at least 2 players."
puts
puts
puts "How many players?"
players = gets.chomp.to_i
until players == 0
  puts "Please add a player name:"
  playername = gets.chomp 
  allnames.push(playername)
  puts "You entered #{playername}."
  players = players -= 1
end

#Put player names and scores into Hash for scoreboard
puts "Here is your list of players:"

allnames.each do |name|
  namescore_pair.push([name,0])
end 
x = 0
namescore_pair.each do |name|
  x = x += 1
  scoreboard["Player #{x}"] = name
end
puts scoreboard
puts "Let's play!"

#Gameplay
# until total_score ___ ||  ___ || ___ || >= max_score
#   puts turn_score for #hash key in v[2]
# puts "Next Up: scoreboard[loop total number of hash keys]""
# end


# puts "Good game! Player _ wins! Player __ is a Hog!"

# # ACII art

# #Do you want to play again? Y/N.  If Yes- restart program. If no, exit program.

