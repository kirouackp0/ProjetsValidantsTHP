require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#accueil
puts "----------------------------
| Bienvenue sur Mortal Kombat : Humain versus Machine|
|Es-tu plus fort.e que l'IA?|
----------------------------"

#initialisation du joueur
puts "Quel est ton nom, courageux humain ?"
print "< " 
input = gets.chomp
player1 = HumanPlayer.new(gets.chomp)
print "Bienvenue, #{input} et bon courage !"
puts player1.show_state
puts "                                                        "

#initialisation des ennemis
player2 = Player.new("Jose")
player3 = Player.new("Josiane")
puts "Je vous présente vos pires ennemis, #{player2} et #{player3} :"
ennemis = [player2, player3]
ennemis.each do |ennemi|
    puts ennemi.show_state
puts "                                                        "
end

#combat
    puts "Passons à la phase d'attaque :"
    puts player1.show_state
    puts "                                                        "

def display_menu
    puts "Quelle action veux-tu effectuer ?"
            puts "a - chercher une meilleure arme"
            puts "b - chercher à se soigner"
            puts "attaquer un joueur en vue :"
            puts "c - Josiane a 10 points de vie"
            puts "d - José a 10 points de vie"
end

def get_user_choice
    print "Choice : "
    gets.chomp
    puts "                                                        "
end

#Main program
display_menu
choice =  get_user_choice

case choice
when "a"
    puts "Recherche d'une arme en cours..."
    player1.search_weapon
    puts player1.show_state
    puts "                                                        "
    puts "                                                        "
    display_menu

when "b"
    puts "Recherche d'un health pack en cours"
    player1.search_health_pack
    puts player1.show_state
    puts "                                                        "
    puts "                                                        "
    display_menu

when "c" 
    puts "Tu t'en prends à Josiane !"
    player1.attacks(player2)
    puts player2.show_state
    puts "                                                        "
    puts "                                                        "
    display_menu
    
when "d" 
    puts "Tu t'en prends à José !"
    player1.attacks(player3)
    puts player3.show_state
    puts "                                                        "
    puts "                                                        "
    display_menu
end

binding.pry

=begin
while player1.life_points > 0 && (player1.life_points > 0 || player2.life_points >0)
        break if player1.life_points <= 0 || player2.life_points <= 0 && player2.life_points <= 0

    player2.attacks(player1)
    player3.attacks(player1)
    puts "                                                     "

    puts "Voici l'état de nos joueurs :"
    puts player1.show_state
    puts player2.show_state
    puts player3.show_state
    puts "                                                     "
=end