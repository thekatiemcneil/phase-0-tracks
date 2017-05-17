# Release 1
colors = ["red", "orange", "green", "blue"]
new_colors = []

cities = {
  city_1: "Austin",
  city_2: "Chicago",
  city_3: "New York"
}

# each array
colors.each do |colors|
  new_colors << colors.length
end

p colors
p new_colors

# map array
p colors
colors.map! do |colors|
  colors.length
end

p colors

# each hash
cities.each do |label, city|
  puts "#{label} is #{city}."
end

# Release 2

numbers = [5, 10, 15, 20, 25]

numbers_hash = {
  five: 5,
  ten: 10,
  fifteen: 15,
  twenty: 20,
  twenty_five: 25
}

# delete if less than 15

numbers.delete_if { |number| number < 15}
p numbers

numbers_hash.delete_if {|string, number| number < 15}
p numbers_hash

# keep if less than 15

p numbers
numbers.keep_if { |number| number < 20}
p numbers

numbers_hash.keep_if { |string, number| number < 20}
p numbers_hash

numbers_2 = [1, 2, 3, 4, 5, 6, 7]

hash_2 = {
  monday: 1,
  tuesday: 2,
  wednesday: 3,
  thursday: 4,
  friday: 5,
  saturday: 6,
  sunday: 7
}

# select

p numbers_2.select { |number| number.even? }

p hash_2.select { |day, number| number.even? }

# remove values

p numbers_2.take_while {|numbers| numbers < 3}