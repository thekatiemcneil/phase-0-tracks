#print "what is your name?"
#assign user input to 'name' value.
puts "Whats your name?"
name = gets.chomp

#assign vampire status based upon vampire names
  if
    name == "Drake Cula"
      name_test = true
    elsif name == "Tu Fang"
      name_test = true
    else name_test = false
  end

#print "how old are you?"
#assign user input to 'age' value.
puts "How old are you?"
age = gets.chomp

#print "What year were you born?"
#assign user input to 'year of birth' value.
puts "What year were you born?"
year_of_birth = gets.chomp

#figure out estimated age by birth year
#compare estimated age with submitted age
#assign vampire status based upon age

  if
    2017 - year_of_birth.to_i == age.to_i
      age_test = false
    elsif 2017 - year_of_birth.to_i != age.to_i
      age_test = true
  end

#print "our company cafeteria serves garlic bread. Should we order some for you?"
#assign user input to 'garlic_bread_preference' value.
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_preference = gets.chomp

#assign vampire status based on bread preference
  if garlic_bread_preference == "no"
    garlic_test = true
  elsif garlic_bread_preference == "yes"
    garlic_test = false
  end

#print "Would you like to enroll in the compnay's health insurance?"
#assign user input to 'health_insurance' value.
puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

#assign vampire status based on health insurance preference
  if health_insurance == "no"
    health_test = true
  elsif health_insurance == "yes"
    health_test = false
  end


puts "Thanks!"


if
  age_test && garlic_test == false
  puts "Probably not a vampire."
  elsif age_test && garlic_test == true
    puts "Probably a vampire."
  elsif age_test && garlic_test && health_test == true
    puts "Almost certainly a vampire."
  elsif name_test == true
    puts "Definitey a vampire."
  else
    puts "Results inconclusive."
  end
