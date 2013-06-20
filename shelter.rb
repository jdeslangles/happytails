class Shelter

  attr_accessor :pets

  def initialize(pets)
    @pets = {}
  end

  def to_s
    "The shelter is currently home to #{pets.size}."
  end
end