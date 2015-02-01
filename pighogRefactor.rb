require 'minitest'
require 'pry'




def hog_game_players
  allnames = []

  puts
  puts "How many players?"
  players = gets.chomp.to_i
  while players < 2
    puts "You need at least 2 players"
    puts "How many players?"
    players = gets.chomp.to_i
  end
  until players == 0
    puts
    puts
    puts "Please add a player name:"
    playername = gets.chomp 
    allnames.push(playername)
    puts "You entered #{playername}."
    players = players -= 1
    puts
    puts
  end
  return allnames
end
  


#Put player names and scores into Hash for scoreboard
  #puts player names into scoreboard
def hog_game_scoreboard (player_array)
    namescore_pair = []
    scoreboard = {}

    player_array.each do |name|
      namescore_pair.push([name,0])
    end 
    x = 0
    namescore_pair.each do |name|
      x += 1
      scoreboard["Player #{x}"] = name
    end
    return scoreboard
end


  #?? Check to make sure user put in a valid number.
def player_turn
  playerturn = []

  puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
  ndice = gets.chomp.to_i
binding.pry
  unless (1..20).to_a.include?(ndice)
    puts "That is not a valid response. Please try again."
    puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
    ndice = gets.chomp.to_i
binding.pry
  end
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
 

# puts
# puts
while true
  #begin game
  puts
  puts "---------------------------------"
  puts "Welcome to Hog! This version of the game is played with 6-sided dice and at least 2 players."
  puts
  puts
  player_array = hog_game_players
  scoreboard_current = hog_game_scoreboard(player_array)
  puts
  puts
  # gameplay
  puts "How many points would you like to play to?"
  max_score = gets.chomp.to_i 
  while (1..100000).to_a.include?(max_score) == false
    puts "That is not a valid response. Please try again."
    puts "How many points would you like to play to?"
    puts gets.chomp.to_i
  end
  puts
  puts
  puts "Let's play!"
  #total_score_array = [] #scoreboard{2nd obj}
  count = player_array.length.to_i
  hash_key_gen = 0
  loop do
    hash_key_gen += 1
      if hash_key_gen > count
        hash_key_gen = 1
      end
    puts
    puts "Here is the current scoreboard:"
    print scoreboard_current
    puts
    puts
    puts "----------------"
    puts
    puts
    puts "Player turn: #{scoreboard_current["Player #{hash_key_gen}"][0]}" #Add player name from array reference
    puts
  break if (scoreboard_current["Player #{hash_key_gen}"][1] += player_turn) >= max_score
    puts
    puts
  end

  puts
  puts
  puts
  puts "Good game! #{scoreboard_current["Player #{hash_key_gen}"][0]} wins!"
  puts
  puts
  puts File.read("pigascii.txt")
  puts
  puts
  puts scoreboard_current
  puts
  puts
  puts
  puts "Do you want to play again? Y/N"
  restart_array = ["y", "n", "Y", "N"]  
  restart = gets.chomp
  unless restart_array.include?(restart) == true
    puts "That is not a valid response. Do you want to play again?"
    restart = gets.chomp
  end
  if restart == "N" || restart == "n"
    puts
    puts
    puts "Thanks for playing!"
    puts
    puts
    puts
    break
  end
end


