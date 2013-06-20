require 'pry'

require_relative 'client'
require_relative 'shelter'
require_relative 'animals'


#categories of animals available at the shelter

dogs = Shelter.new "Dogs"
cats = Shelter.new "Cats"
fishes = Shelter.new "Fishes"
turtles = Shelter.new "Turtles"

#list of animals in shelter's database

dog_1 = Animals.new "Snowy", "Fox Terrier", 4,:male, "his red ball"
dog_2 = Animals.new "Tobbie", "Maltese", 9, :female, "her yellow ball"
dog_3 = Animals.new "Xerxes", "Chihuahua", 3, :male, "destroying stuff in spectacular fashion"
cat_1 = Animals.new "Isolde", "British Shorthair Chinchilla", 10, :female, "laser pointers"
cat_2 = Animals.new "Garfield", "Maine Coon", 12, :male, "lasagna"
fish_1 = Animals.new "Napoleon", "red fish", 2, :male, "bubbles"
turtle_1 = Animals.new "Josephine", "Galapagos turtle", 120, :female, "meditation"


[dog_1, dog_2, dog_3].each do |dog|
  dogs.categories[dog.name] = dog
end

[cat_1, cat_2].each do |cat|
  cats.categories[cat.name] = cat
end

[fish_1].each do |fish|
  fishes.categories[fish.name] = fish
end

[turtle_1].each do |turtle|
  turtles.categories[turtle.name] = turtle
end

#list of clients in shelter's database

client_1 = Client.new "Barney", 39, :male, 0, 1
client_2 = Client.new "Ted", 38, :male, 2, 1
client_3 = Client.new "Marshall", 39, :male, 2, 0
client_4 = Client.new "Robin", 29, :female, 0, 0
client_5 = Client.new "Lily", 29, :female, 2, 0


binding.pry