# take in name as a string
# convert string into a character array
# test each character to determine if its a vowel
  # if its a vowel, change to next vowel in sequence
# test each character to determine if its a consonant
  # if its a consonant, change to next consonant in sequence
# return array to string (whats the opposite of chars?)
# change order of first and last name
# give output of spy name

consonants_hash = {
  "b" => "c", "B" => "C",
  "c" => "d", "C" => "D",
  "d" => "f", "D" => "F",
  "f" => "g", "F" => "G",
  "g" => "h", "G" => "H",
  "h" => "j", "H" => "J",
  "j" => "k", "J" => "K",
  "k" => "l", "K" => "L",
  "l" => "m", "L" => "M",
  "m" => "n", "M" => "N",
  "n" => "p", "N" => "P",
  "p" => "q", "P" => "Q",
  "q" => "r", "Q" => "R",
  "r" => "s", "R" => "S",
  "s" => "t", "S" => "T",
  "t" => "v", "T" => "V",
  "v" => "w", "V" => "W",
  "w" => "x", "W" => "X",
  "x" => "y", "X" => "Y",
  "y" => "z", "Y" => "Z",
  "z" => "b", "Z" => "B"
}

vowels_hash = {
  "a" => "e", "A" => "E",
  "e" => "i", "E" => "I",
  "i" => "o", "I" => "O",
  "o" => "u", "O" => "U",
  "u" => "a", "U" => "A"
}

names = {}
# convert name into character array
input_status = false
puts "Please type a name and hit 'enter.' When you've converted all names, type 'quit.'"
until input_status
name = gets.chomp
if
  name == "quit"
    input_status = true
  else
    input_status = false
  # test characters to see if they are vowels & consonants
  vowel_name = name.gsub(/[AEIOUaeoiu]/, vowels_hash)
  consonant_name = vowel_name.gsub(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/, consonants_hash)
  # change order of first and last name
  backwards_name = consonant_name.split(' ').reverse
  spy_name = [backwards_name]*" "
  names[:"#{name}"] = spy_name
end
end
names.each do |name, spyname|
  puts "#{spyname} is actually #{name}."
end