# take in name as a string
# convert string into a character array
# test each character to determine if its a vowel
  # if its a vowel, change to next vowel in sequence
# test each character to determine if its a consonant
  # if its a consonant, change to next consonant in sequence
# return array to string (whats the opposite of chars?)
# change order of first and last name
# give output of spy name

# vowels = ["a", "e", "i", "o", "u"]
vowels = (/aeiou/)
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "e", "x", "y", "z"]

vowels_hash = {
  "a" => "e",
  "e" => "i",
  "i" => "o",
  "o" => "u",
  "u" => "a"
}

# convert name into character array
name = "Katie McNeil"
new_name = name.chars
p name
p new_name

# test characters to see if they are vowels
# name.scan(/[AEIOUaeiou]/)
# p name.gsub(/["a", "e", "i", "o", "u"]/, '*')
p name.gsub("aeiou".chars, "eioua".chars)
p name
