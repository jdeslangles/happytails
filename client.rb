class Client

  attr_accessor :name, :age, :sex, :kids, :pet

def initialize(name, age, sex, kids, pet = nil)
  @name = name
  @age = age
  @sex = sex
  @kids = kids
  @pet = []
end

def to_s
  "#{name} is #{sex} year-old, #{sex} and has #{kids} kid(s). Currently owns #{pet} pet(s)."
end

end