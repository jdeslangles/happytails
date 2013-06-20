class Shelter

  attr_accessor :categories

  def initialize(categories)
    @categories = {}
  end

  def to_s
    "The shelter is currently home to #{pets.size}."
  end
end