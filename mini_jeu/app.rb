require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de nos joueurs :"
puts player1.show_state
puts player2.show_state
puts "                                                     "

while player1.life_points > 0 && player2.life_points > 0

    puts "Passons à la phase d'attaque :"
    player1.attacks(player2)
    player2.attacks(player1)
    puts "                                                     "

    puts "Voici l'état de nos joueurs :"
    puts player1.show_state
    puts player2.show_state
    puts "                                                     "
    break if player1.life_points <= 0 || player1.life_points <= 0
end

binding.pry

=begin
class Game
    def initialize
    @player1 = Player.new("Josiane")
    @player2 = Player.new("José")
    end

#Presentation of fighters
puts "It's going to be a close fight today, folks. Here are two combattants :"
player1.show_state
player2.show_state

#Attack
puts "3...2...1...Fight!!! :"
player1.attacks(player2)

#Counterattack
player2.attacks(player1)
puts 

#how does it know which name to put where?
#calling one method's result into another... only be creating another variable inside?
    #In order to use the result of one method in another method, you generally need to store the result in a variable within the first method and then pass that variable as an argument to the second method.#
#how does gets_damage receive the updated amount?
=end