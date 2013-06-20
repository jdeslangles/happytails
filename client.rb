class Client

  attr_accessor :name, :age, :sex, :kids, :pets

def initialize(name, age, sex, kids, pets = nil)
  @name = name
  @age = age
  @sex = sex
  @kids = kids
  @pets = []
end

def to_s
  "#{name} is #{sex} year-old, #{sex} and has #{kids}."
end

end