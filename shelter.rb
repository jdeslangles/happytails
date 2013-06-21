class Shelter

  attr_accessor :available, :clients

  def initialize
    @available = {}
    @clients = {}
  end

  def to_s
    "The shelter is currently home to #{available_animals.size}."
  end

  def adopt (client_name, animal_name)
    @clients[client_name].animals[animal_name] = @available.delete(animal_name)
  end

  def taking_in (client_name, animal_name)
    @available[animal_name] = @clients[client_name].animals.delete(animal_name)
  end

end