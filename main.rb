require 'pry'

require_relative 'client'
require_relative 'shelter'
require_relative 'animal'

def menu
  puts `clear`
  puts "************Happy Tails************"
  puts "\nWelcome to Happy Tails Shelter!"
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
happytails = Shelter.new

#list of animals in shelter's database
dog_1 = Animal.new "Snowy", "Fox Terrier", 4,:male, "his red ball"
dog_2 = Animal.new "Tobbie", "Maltese", 9, :female, "her yellow ball"
dog_3 = Animal.new "Xerxes", "Chihuahua", 3, :male, "destroying stuff in a spectacular fashion"
cat_1 = Animal.new "Isolde", "British Shorthair Chinchilla", 10, :female, "laser pointers"
cat_2 = Animal.new "Garfield", "Maine Coon", 12, :male, "lasagna"
fish_1 = Animal.new "Napoleon", "red fish", 2, :male, "bubbles"
turtle_1 = Animal.new "Josephine", "Galapagos turtle", 120, :female, "meditation"


[dog_1, dog_2, dog_3].each do |dog|
  happytails.available[dog.name.downcase.sub(' ', '').to_sym] = dog
end
[cat_1, cat_2].each do |cat|
  happytails.available[cat.name.downcase.sub(' ', '').to_sym] = cat
end
[fish_1].each do |fish|
  happytails.available[fish.name.downcase.sub(' ', '').to_sym] = fish
end
[turtle_1].each do |turtle|
  happytails.available[turtle.name.downcase.sub(' ', '').to_sym] = turtle
end

#list of clients in shelter's database
client_1 = Client.new "Barney", 39, :male, 0, 1
client_2 = Client.new "Ted", 38, :male, 2, 1
client_3 = Client.new "Marshall", 39, :male, 2, 0
client_4 = Client.new "Robin", 29, :female, 0, 1
client_5 = Client.new "Lily", 29, :female, 2, 0

[client_1, client_2, client_3, client_4, client_5].each do |client|
  happytails.clients[client.name.downcase.to_sym] = client
end

response = menu

while response != 'q'
  case response
    when 'a'
      puts "***********************************"
        puts "\nCurrently up for adoption:"
        puts happytails.available.keys.join(", ")
       puts "***********************************"
        puts
        puts "Some more details about these pets:"
        puts
        happytails.available.each do |key, animal|
          puts "\n#{key.upcase}: #{animal.name} is a beautiful #{animal.age} year-old #{animal.sex} #{animal.breed} who loves #{animal.favorite_toy} above everthing else. "
        end
        puts
        puts "Please press Enter to come back to the main menu"
        gets

    when 'b'
      puts "***********************************"
        puts "\nThis is the list of our clients:"
        puts happytails.clients.keys.join(", ")
      puts "***********************************"
        puts "\nWhich one is you? Please enter your name:"
        name = gets.chomp.downcase.to_sym
        puts
        puts "What fantastic animal will you be bringing home today?"
        puts "\nAvailable today are: "
        puts
        puts happytails.available.keys.join(", ")
        puts
        puts "Please enter the name of the pet you would like to adopt:"
        adoption_choice = gets.chomp.downcase.to_sym
        happytails.adopt (name), (adoption_choice)
        puts
        puts "Thank you for making #{adoption_choice} a new member of your family!"
        puts
        puts "Please press Enter to come back to the main menu"
        gets

    when 'c'
      puts "***********************************"
        puts "\nThis is the list of our clients:"
        puts happytails.clients.keys.join(". ")
      puts "*******************************************************************"
        puts "\nWhich one is you? Please enter your name:"
        name = gets.chomp.downcase.to_sym
        puts
        puts happytails.clients[name].animals.keys.join(". ")
        puts "Please enter the name of your pet:"
        give_up = gets.chomp.downcase.to_sym
        happytails.taking_in (name), (give_up)
        puts
        puts "Thank you. We will make sure #{give_up} finds a good home!"
        puts
        puts "Please press Enter to come back to the main menu"
        gets

    when 'd'
      puts "***********************************"
        puts "\nOur clients:"
        puts happytails.clients.keys.join(", ")
      puts "***********************************"
        puts
        puts "In more details..."
        happytails.clients.each do |key, client|
          puts "\n#{key.upcase}: #{client.name} is #{client.sex}, #{client.age} year-old and has #{client.kids} kid(s). Currently owns #{client.animals} pet(s). "
        end
        puts
        puts "Please press Enter to come back to the main menu"
        gets
end

response = menu

end
binding.pry