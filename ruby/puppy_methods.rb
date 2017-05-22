# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(n)
#     woof_count = n
#     until woof_count == 0
#       puts "Woof!"
#        woof_count -= 1
#     end
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(n)
#     puts n*7
#   end

#   def shake
#     puts "*extends paw*"
#   end

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

# end

# Bailey = Puppy.new

# Bailey.fetch("ball")
# Bailey.speak(3)
# Bailey.roll_over
# Bailey.dog_years(4)
# Bailey.shake

# Misha = Puppy.new

song_array = []

class Songs

def initialize
  puts "Initializing song!"
end

def play_song
  puts "Plays song."
end

  def repeat(n)
    amount = n
    puts "Song will play #{amount} times."
  end
end

loop_count = 0
until loop_count == 5
  song = Songs.new
  song_array << song
  loop_count += 1
end

song_array.each do |title|
  title.play_song
  title.repeat(3)
end


# Canyons.play_song
# Canyons.repeat(3)
