class Santa

  def speak
    puts "Ho, ho, ho! Haaaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance...."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

  def gender(gender)
    @gender = gender
  end

end

santas = []

santas << saint_nick = Santa.new("male", "Kiwi")
saint_nick.speak
saint_nick.eat_milk_and_cookies("chocolate chip")

santas << sir_nicholas = Santa.new("gender fluid", "British")
santas << nico_las = Santa.new("female", "Kenyan")

p saint_nick.celebrate_birthday
p saint_nick.get_mad_at("Vixen")
p saint_nick.celebrate_birthday
p sir_nicholas.gender("female")

p santas
