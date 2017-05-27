class Santa
  attr_reader :ethnicity
  attr_accessor :age, :reindeer_ranking, :gender
  def speak
    puts "Ho ho ho! Haaaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end


  def celebrate_birthday
    @age = age + 1
  end

  def get_mad_at(reindeer)
    reindeer_ranking.delete(reindeer)
    reindeer_ranking.push(reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
  end
end

# santa_list = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i|
#   santa_list << Santa.new(example_genders[i], example_ethnicities[i])
# end

# create list of genders and list of ethnicities
# iterate through the list x number of times
  # for each iteration, select one random gender and one random ethnicity
    # also, add a random age between 0-140
# print each iteration of santas

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

250.times do
  gender = example_genders.sample
  ethnicity = example_ethnicities.sample
  santa = Santa.new(gender, ethnicity)
  age = (0..140).to_a.sample
    puts "This santa is a #{gender} #{ethnicity}, and is #{age} years old."
  end