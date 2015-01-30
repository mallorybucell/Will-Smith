require 'minitest'
require 'pry'



#Ask Player how many dice to roll
  #?? Check to make sure user put in a valid number.
def player_turn
  playerturn = []

  puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
  ndice = gets.chomp
  puts "You are rolling #{ndice} dice."
  ndice.to_i.times do |roll|
    roll = (rand(1..6))
    print "You rolled: "
    print roll, " "
    puts
    playerturn.push(roll)
  end
  if playerturn.to_s.include?("1")
    puts "You do not get any points." #Make sure this goes to player.next turn
    return 0
  else
    turn_score = 0
    playerturn.each do |eachroll|
      turn_score = (turn_score += eachroll)
    end
    puts "You earned #{turn_score} points."
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

player_turn

#Gameplay
# until total_score ___ ||  ___ || ___ || >= max_score
#   puts turn_score for #hash key in v[2]
# puts "Next Up: scoreboard[loop total number of hash keys]""
# end


# puts "Good game! Player _ wins! Player __ is a Hog!"

# # ACII art

# #Do you want to play again? Y/N.  If Yes- restart program. If no, exit program.

