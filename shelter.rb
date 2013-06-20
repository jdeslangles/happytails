class Shelter

  attr_accessor :animals, :clients

  def initialize(animals)
    @animals = {}
    @clients = {}
  end

  def to_s
    "The shelter is currently home to #{pets.size}."
  end
end