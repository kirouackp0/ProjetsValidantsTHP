class Player
    attr_accessor :player

    def initialize(player_to_create)
    @name = player_to_create
    @life_points = 10
    end

    def name
        return @name
    end

    def life_points 
        return @life_points
    end

    def show_state
        return "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(damage_received)
        @life_points = @life_points -= damage_received
        puts "#{name} a été tué" if @life_points <= 0
    end

    def attacks(attacked_player)
        damage_dealt = compute_damage
        attacked_player.gets_damage(damage_dealt)
        puts "#{name} attaque #{attacked_player.name}"
        puts "Il lui inflige #{damage_dealt} points de dommages"
    end

    def compute_damage
        return rand(1..6)
    end

end

class HumanPlayer
    attr_accessor :weapon_level

    def initialize(player_to_create)
        @name = player_to_create
        @life_points = 100
        @weapon_level = 1
    end 

    def name
        return @name
    end

    def life_points 
        return @life_points
    end

     def show_state
        return "Tu as #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end

    def gets_damage(damage_received)
        @life_points = @life_points -= damage_received
        puts "#{name} a été tué" if @life_points <= 0
    end

    def attacks(attacked_player)
        damage_dealt = compute_damage
        attacked_player.gets_damage(damage_dealt)
        puts "#{name} attaque #{attacked_player.name}"
        puts "Il lui inflige #{damage_dealt} points de dommages"
    end

    def compute_damage
        @weapon_level = search_weapon
        rand(1..6) * @weapon_level
    end

    def search_weapon
        new_weapon_level = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
        if new_weapon_level > @weapon_level
            @weapon_level = new_weapon_level
            puts "Elle est meilleure que ton arme actuelle: tu la prends"
        else 
            puts "M@#RE..elle n'est pas mieux que ton arme actuelle"
        end
    end

    def search_health_pack
        health_pack = rand(1..6)
        if health_pack == 1
            puts "Tu n'as rien trouvé"
        elsif health_pack >= 2 && health_pack <= 5
            @life_points += 50
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
        elsif health_pack = 6
            @life_points += 80
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
        end
    end
end
