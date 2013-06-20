class Client

  attr_accessor :name, :age, :sex, :kids, :animals, :adopt, :give_up

def initialize(name, age, sex, kids, pet)
  @name = name
  @age = age
  @sex = sex
  @kids = kids
  @animals = {}
end

def to_s
  "#{name} is #{sex} year-old, #{sex} and has #{kids} kid(s). Currently owns #{animals} pet(s)."
end

end