require "pry"
class User
=begin
    def greet
        puts "Bonjour, monde!"
    end

    def say_hello_to_someone(first_name)
        puts "Bonjour, #{first_name} !"
    end

    def show_itself
        print "Voici, l'instance : "
        puts self
    end

    def update_email(email_to_update)
        @email = email_to_update
    end

    def read_email
        return @email
    end

# ATTR_WRITER
    attr_writer :mastercard
    def read_mastercard
        return @mastercard
    end

# ATTR_READER 
    attr_reader :birthdate
        def update_birthdate(birthdate_to_update)
            @birthdate = birthdate_to_update
        end

#ATTR_ACCESSOR - A PRIVILEGIER
# Créé une variable d'instance qui peut facilement être appelée (instance.variable) et modifiée (instance.variable = nouvelle_valeur) en dehors de la classe de l'instance
    attr_accessor :email
    @@user_count = 0


#INITIALIZE METHOD & CLASS METHOD
# The purpose of the initialize method is to set up the initial state of the object being created by assigning default values to instance variables or performing any necessary setup operations.

  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end

  def self.count #PROBLEM!!!!!#
    return @@user_count
  end
=end

#3.4 NEXT
end

binding.pry
puts "end of file"


=begin

EXPLICATIONS

class User
  attr_writer :email

  def read_email
    return @email
  end
end

julie = User.new

# Using the attr_writer-generated setter method to update the email
julie.email = "julie@julie.com"

# Using the read_email method to access the updated email
puts julie.read_email

# Un attr_reader permet de lire une variable d'instance sans avoir à coder une méthode .read_variable. 

# Par contre, ta variable d'instance ne pourra pas être modifiée avec instance.variable = nouvelle_valeur . Mais elle pourra être appelée dans le code à l'intérieur de ta classe (avec son nom en @variable

=end