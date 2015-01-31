require 'minitest'
require 'pry'



namescore_pair = []
allnames = []
max_score = 100
scoreboard = {}


#Ask Player how many dice to roll
  #?? Check to make sure user put in a valid number.
def player_turn
  playerturn = []

  puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
  ndice = gets.chomp
  puts
  puts
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





puts
puts "---------------------------------"
puts "Welcome to Hog! This version of the game is played with 6-sided dice and at least 2 players."
puts
puts
puts "How many players?"
players = gets.chomp.to_i
while players < 2
  puts "You need at least 2 players"
  puts "How many players?"
  players = gets.chomp.to_i
end
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
  x += 1
  scoreboard["Player #{x}"] = name
end
puts "Let's play!"

# gameplay

#total_score_array = [] #scoreboard{2nd obj}
count = allnames.length.to_i
hash_key_gen = 0
loop
  hash_key_gen += 1
    if hash_key_gen > count
      hash_key_gen = 1
    end
  puts
  puts "Here is the current scoreboard:"
  print scoreboard
  puts
  puts
  puts "----------------"
  puts
  puts
  puts "Player turn: #{scoreboard["Player #{hash_key_gen}"][0]}" #Add player name from array reference
  puts
  scoreboard["Player #{hash_key_gen}"][1] += player_turn 
  puts
  puts
  #until (scoreboard["Player #{hash_key_gen}"][1] += player_turn) == max_score

puts "Good game! #{scoreboard["Player #{hash_key_gen}"][0]} wins!"



# # ACII art

# #Do you want to play again? Y/N.  If es- restart program. If no, exit program.
# end
end
