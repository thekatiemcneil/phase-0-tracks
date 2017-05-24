class Santa

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!!"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end

  def ranking
    @ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def age
    @age = 0
  end

end

Mr_Clause = Santa.new
Mr_Clause.speak
Mr_Clause.eat_milk_and_cookies("chocolate chip")