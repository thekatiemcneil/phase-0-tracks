puts "What's your name?"
  name = gets.chomp

  if
    name == "Drake Cula"
    vampire_name = true
  elsif name == "Tu Fang"
    vampire_name = true
  else werewolf_name = true
  end

puts "How old are you?"
  age = gets.chomp

puts "What year were you born?"
  birth_year = gets.chomp

  estimated_age = 2017 - birth_year.to_i

  if
    estimated_age.to_i == age.to_i
    werewolf_age = true
  elsif estimated_age.to_i != age.to_i
    vampire_age = true
  else werewolf_age = true
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  bread_preference = gets.chomp

  if bread_preference == "no"
    vampire_bread = true
  else
    werewolf_bread = true
  end

puts "Would you like to enroll in our company's health insurance?"
  insurance_preference = gets.chomp

  if insurance_preference == "no"
    vampire_insurance = true
  else werewolf_insurance = true
end


# puts "Name: #{name}. Age: #{age}. Birth Year: #{birth_year}. Garlic Bread? #{bread_preference}. Insurance? #{insurance_preference}."

if
  werewolf_age && (werewolf_insurance || werewolf_bread)
  puts "Probably not a vampire."
elsif
  vampire_age && (vampire_insurance || vampire_bread)
  puts "This is probably a vampire."
elsif
  vampire_age && vampire_insurance && vampire_bread
  puts "This is almost certainly a vampire."
elsif vampire_name
  puts "This is definitely a vampire."
else
  puts "Results inconclusive."
end
