class Client

def initialize(name, age, sex, kids = nil, pets = nil)
  @name = name
  @age = age
  @sex = sex
  @kids = kids
  @pets = pets
end

def to_s
  "#{name} is a beautiful #{sex} #{breed} who loves to play with #{favorite_toy}"
end

end