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
# evaluate the input to determine if it matches a previously entered key
# if they type a key, ask for new variable for the key
# assign the user input to the key
# if they type 'none', then skip
puts "Is there any info you need to update?"
  update = gets.chomp
  position = client_1.key(update)
  if
    client_1.has_key? "#{update}".to_sym
      puts "What is the new value?"
        value = gets.chomp
      client_1[update.to_sym] = "#{value}"
    end

# print lastest version of hash
p client_1