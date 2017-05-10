puts "What's your name?"
  name = gets.chomp

  if name == "Drake Cula"
    vampire_name = true
  elsif name == "Tu Fang"
    vampire_name = true
  else vampire_name = false
  end

puts "How old are you?"
  age = gets.chomp

puts "What year were you born?"
  year = gets.chomp

estimated_age = 2017 - year.to_i

  if estimated_age.to_i != age.to_i
    vampire_age = true
  else vampire_age = false
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp

  if garlic_bread == "no"
    vampire_garlic = true
  else vampire_garlic = false
  end

puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  if insurance == "no"
    vampire_health = true
  else vampire_health = false
  end

puts "Thanks! Now detecting vampire status."

# if employee age and garlic bread or health insurance are okay, print "Probably not a vampire."

# if employee age is wrong and hates garlic bread or waives insurance, print "Probably a vampire."

# if employee age is wrong, hates garlic bread, and doesn't want insurance, print "Almost certainly a vampire."

# if name matches a vampire name, print "Definitely a vampire."

# otherwise, print "Results inconclusive."