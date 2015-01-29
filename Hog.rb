#Enter multiple players
  #Hash with Array as value for scores/names




#Game play
max_score = 100
toatl_scores = {}(0)

puts "Welcome to Hog! Hog is a game played with 6-sided dice and at least 2 players."
puts
puts
puts "First, who is playing? There must be at least two players."

#def who_is_playing (Possibly should not be a function)
  #Enter player name 
  #Start Game or Add Player
  #Player name => Key in Hash
  #Check Hash has at least 2 keys
  #Return Hash?


#Ask Player how many dice to roll
def player_turn
  puts "It's _ turn. You can roll up to 20 6 dice. How many dice would you like to roll?"
  ndice = gets.chomp
  return ndice

  puts "You are rolling #{ndice}. Hit "Enter" to roll."
  #Check to make sure user put in a valid number.
  #return ndice # of random values
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
end

def check_total_scores
until #Some player_total_points = max_score
  puts "Here is the current score:"
  "Hit "n" to move on to the next player." #make this work
  #n calls player_turn with next player in hash/order.
end

puts "Good game! Player _ wins! Player __ is a Hog!"

# ACII art

#Do you want to play again? Y/N.  If Yes- restart program. If no, exit program.




