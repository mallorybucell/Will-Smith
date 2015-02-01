require 'minitest'
require 'pry'



#Asks and sets which game is played
def game_choice
  choices = ["pig", "hog"]
  gamechoice = gets.chomp.downcase
    unless choices.include?(gamechoice)
      puts "I did not understand. Would you like to play Pig or Hog?"
      gamechoice = gets.chomp.downcase
    end
  return gamechoice
end


#Determines player names and number of players
def hog_game_players(game)
  allnames = []
  if game == "hog"
    puts
    puts "How many players?"
    players = gets.chomp.to_i
    while players < 2
      puts "You need at least 2 players"
      puts "How many players?"
      players = gets.chomp.to_i
    end
  else
    puts "Pig is a 2-player game."
    players = 2
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
  


#Put player names and initial scores into Hash for scoreboard
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


#Player turn descriptions for each game
def amount_dice(game)
  if game == "hog"
    puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
    amountdice = gets.chomp.to_i
    until (1..20).to_a.include?(amountdice)
      puts "That is not a valid response. Please try again."
      puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
      amountdice = gets.chomp.to_i
    end
  else
    amountdice = 1
  end
  return amountdice
end

def player_turn(game, ndice)
  playerturn = []
  puts
  puts
  if game == "hog"
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
  else #could condence more but too much recursion for right now
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
        response = "y"
        until response == "n"
          turn_score = 0
          playerturn.each do |eachroll|
            turn_score = (turn_score += eachroll)
          end
          puts "You earned #{turn_score} points."
          puts
          puts
          puts "Do you want to roll again? Y/N"
          continue = gets.chomp.downcase
          response = continue
        end
      end
  end
  return turn_score
end
 


# Game Start and main gameplay
while true
  #begin game
  puts
  puts "---------------------------------"
  puts "Welcome to Jiggy Pig Dice! Would you like to play Pig or Hog?"
  puts
  puts
  game = game_choice
  puts
  puts
  player_array = hog_game_players(game)
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
  puts "On your mark, ready, set, let's go!"
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
    ndice = amount_dice(game)
    puts
  break if (scoreboard_current["Player #{hash_key_gen}"][1] += player_turn(game, ndice)) >= max_score
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
  restart_array = ["y", "n"]  
  restart = gets.chomp.downcase
  unless restart_array.include?(restart) == true
    puts "That is not a valid response. Do you want to play again?"
    restart = gets.chomp.downcase
  end
  if restart == "n"
    puts
    puts
    puts "Thanks for playing!"
    puts
    puts
    puts
    break
  end
end


