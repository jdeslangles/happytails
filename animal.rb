class Animal

attr_accessor :name, :breed, :age, :sex, :favorite_toy, :owner

def initialize(name, breed, age, sex, favorite_toy)
  @name = name
  @breed = breed
  @age = age
  @sex = sex
  @favorite_toy = favorite_toy
  @owner = []
end


def has_owner?
  self.owner.any?
end


def to_s
  "#{@name} is a beautiful #{@age} year-old #{@sex} #{@breed} who loves #{@favorite_toy} above everthing else. "
end



end