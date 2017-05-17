# create hash with empty keys

client_1 = {}

# ask for name
# collect name as variable for name key

puts "What is your name?"
  client_1[:name] = gets.chomp

# ask for age
# collect age as variable for age key
puts "How old are you?"
  client_1[:age] = gets.chomp

# ask for number of children
# collect number of children as variable for children key
puts "How many children do you have?"
  client_1[:children] = gets.chomp

# ask for decor theme
# collect decor theme as variable for decor_theme key
puts "What is your decor theme?"
  client_1[:decor_theme] = gets.chomp

# ask for number of rooms
# collect number of rooms as variable for rooms key
puts "How many rooms do you have?"
  client_1[:rooms] = gets.chomp

# print latest version of hash
p client_1

# ask user if they'd like to update any key, or 'none' to skip
# if they type a key, assign new variable to that key

# print lastest version of hash