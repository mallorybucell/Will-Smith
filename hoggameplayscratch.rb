require 'minitest'
require 'pry'

allnames = ["Usa","Ami","Rei","Mako"]
namescore_pair = []
turn_score = 3
scoreboard = {}


allnames.each do |name|
  namescore_pair.push([name,1])
end 
x = 0
namescore_pair.each do |name|
  x = (x += 1)
  scoreboard["Player #{x}"] = name
end
puts scoreboard
puts "Let's play!"
puts
puts "You scored 3!"
puts
scoreboard["Player 1"][1] += turn_score
puts
puts
puts scoreboard







# allnames.each do |name|
#   namescore_pair.push([name,0])
# end 
# x = 0
# namescore_pair.each do |name|
#   x = x += 1
#   scoreboard["Player #{x}"] = name
# end

# puts scoreboard
#   playerturn = []

#   puts "You can roll up to 20 6-sided dice. How many dice would you like to roll?"
#   ndice = gets.chomp
#   puts "You are rolling #{ndice} dice."
#   ndice.to_i.times do |roll|
#     roll = (rand(1..6))
#     print "You rolled: "
#     print roll, " "
#     puts
#     playerturn.push(roll)
#   end
#   if playerturn.to_s.include?("1")
#     puts "You do not get any points." #Make sure this goes to player.next turn
#     return 0
#   else
#     turn_score = 0
#     playerturn.each do |eachroll|
#       turn_score = (turn_score += eachroll)
#     end
#     puts "You earned #{turn_score} points."
#   end
#   return turn_score
# end

