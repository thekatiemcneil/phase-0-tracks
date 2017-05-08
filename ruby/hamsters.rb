# ask user hamster's name
  #name= gets.chomp
puts "What is your hamster's name?"
name = gets.chomp


# ask user hamster's volume level on scale of 1-10
  #volume= gets.chomp
  #volume= true if <=10, false if >10
puts "On a scale of 1-10, how loud is your hamster?"
volume_level = gets.chomp
volume_level.to_i
puts #{volume_level}


# ask user hamster's fur color
  # fur_color= gets.chomp
puts "What color is your hamster?"
fur_color = gets.chomp

#while good_candidate!=true
# ask user if hamster is a good candidate for adoption y/n
  # if input == "y"
    # good_candidate= true
  # elsif input =="n"
    # good_candidate= true
  # else puts "I didn't understand"
#end
puts "Is your hamster a good candidate for adoption? y/n"
candidate_status = gets.chomp

#ask user hamster's estimated age
  # age=gets.chomp
  # if age is blank, age=nil
puts "What is your hamster's estimated age?"
age = gets.chomp
  if age.empty?
      age = nil
  else age = age.to_i
  end

puts "Hamster's name: #{name}. Hamster's volume: #{volume_level}. Hamster's fur color: #{fur_color}. Adoption candidate: #{candidate_status}.
  Hamster's age: #{age}."