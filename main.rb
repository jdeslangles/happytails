require 'pry'

require_relative 'client'
require_relative 'shelter'
require_relative 'animal'

def menu
  puts 'clear'
  puts "************Happy Tails************"
  puts "\nWelcome to Happy Tails Shelter."
  puts "\n        _='`'=_"
  puts "       //(@_@)||"
  puts "      |||( Y )|||"
  puts "       |||   ///    #"
  puts "      / )  `  ( | //   "
  puts "     ( )   '  ( )/  "
  puts "    (Ww)''''''(wW)"
  puts "\nWhat would you like to do?"
  puts "***********************************"
  puts "To see the list of our animals, press A+Enter"
  puts "To adopt one of our animals, press B+Enter"
  puts "To give us an animal, press C+Enter"
  puts "To have a look at our current clients, press D+Enter"
  puts "To quit, simply press Q+Enter"
gets.chomp.downcase
end


#animal categories available at the shelter
dogs = Shelter.new "Dogs"
cats = Shelter.new "Cats"
fishes = Shelter.new "Fishes"
turtles = Shelter.new "Turtles"

#list of animals in shelter's database
dog_1 = Animal.new "Snowy", "Fox Terrier", 4,:male, "his red ball"
dog_2 = Animal.new "Tobbie", "Maltese", 9, :female, "her yellow ball"
dog_3 = Animal.new "Xerxes", "Chihuahua", 3, :male, "destroying stuff in a spectacular fashion"
cat_1 = Animal.new "Isolde", "British Shorthair Chinchilla", 10, :female, "laser pointers"
cat_2 = Animal.new "Garfield", "Maine Coon", 12, :male, "lasagna"
fish_1 = Animal.new "Napoleon", "red fish", 2, :male, "bubbles"
turtle_1 = Animal.new "Josephine", "Galapagos turtle", 120, :female, "meditation"


[dog_1, dog_2, dog_3].each do |dog|
  dogs.animals[dog.name] = dog
end
[cat_1, cat_2].each do |cat|
  cats.animals[cat.name] = cat
end
[fish_1].each do |fish|
  fishes.animals[fish.name] = fish
end
[turtle_1].each do |turtle|
  turtles.animals[turtle.name] = turtle
end

#list of clients in shelter's database
client_1 = Client.new "Barney", 39, :male, 0, 1
client_2 = Client.new "Ted", 38, :male, 2, 1
client_3 = Client.new "Marshall", 39, :male, 2, 0
client_4 = Client.new "Robin", 29, :female, 0, 1
client_5 = Client.new "Lily", 29, :female, 2, 0

dog_1.owner << client_1
dog_2.owner << client_2
fish_1.owner << client_4



# method to display the full list of animals by category
def complete_list


  gets
end

# method to allow clients to adopt an animal
def adopt

  gets
end

# method to allow clients to give up an animal
def give_up

  gets
end

# method to see the client list
def client_list

  gets
end


response = menu

while response != 'q'
  case response
    when 'a'
        complete_list
    when 'b'
        adoption_list
    when 'c'
        give_up
    when 'd'
        client_list
end

response = menu

end
binding.pry