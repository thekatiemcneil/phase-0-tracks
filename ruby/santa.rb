class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age, :reindeer_ranking

  def speak
    puts "Ho, ho, ho! Haaaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance...."
    # @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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

# santas << saint_nick = Santa.new("male", "Kiwi")
# saint_nick.speak
# saint_nick.eat_milk_and_cookies("chocolate chip")

# santas << sir_nicholas = Santa.new("gender fluid", "British")
# santas << nico_las = Santa.new("female", "Kenyan")

# p saint_nick.celebrate_birthday
# p saint_nick.get_mad_at("Vixen")
# p saint_nick.celebrate_birthday
# p sir_nicholas.gender("female")

gender_examples = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity_examples = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []

# for i in 1..250
#   santas << Santa.new(gender_examples.sample, ethnicity_examples.sample)
#   santa.age = (1..140).to_a.sample
#   puts "We now have #{santas.length}."
# end
# santas = []
# 100.times do |santa_craziness|
#   gender = gender_examples.sample
#   ethnicity = ethnicity_examples.sample
#   age =
#   santas << Santa.new(gender, ethnicity)
#   puts "There are now #{santas.length} santas."
# end

for i in 1..250
  gender = gender_examples.sample
  ethnicity = ethnicity_examples.sample
  santas = Santa.new(gender, ethnicity)
  age = (0..140).to_a.sample
  puts "This santa is a #{gender} #{ethnicity} who is #{age} years old."
end
