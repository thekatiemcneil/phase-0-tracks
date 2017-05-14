# Method for encrypting a string.
def encrypt (str)
  encrypted = ""
  index = 0
    until index == str.length
      if str[index] == "z"
        encrypted = encrypted + "a"
      else
        encrypted = encrypted + str[index].next
    end
  index += 1
  end
  return encrypted
end
encrypt("abc")
encrypt("zed")

# Method for indexing backwards 1.
def previous (letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_index = alphabet.index(letter) - 1
  return alphabet[new_index]
end

# Method for decrypting a string
def decrypt (str)
  decrypted = ""
  index = 0
  until index == str.length
    decrypted = decrypted + previous(str[index])
    index += 1
  end
  return decrypted
end

(encrypt("swordfish"))
=begin
The string "swordfish" is first encrypted.
So it becomes "txpsegjti".
Then it is decrypted, so it is returned with being changed back to "swordfish".
=end

puts "Would you Like to encrypt or decrypt your password?"
action = gets.chomp
  if action == "encrypt"
    puts "Enter password"
    password = gets.chomp
    puts "Password Encrypted: #{encrypt(password)}"
  elsif action == "decrypt"
    puts "Enter password"
    password = gets.chomp
    puts "Password Decrypted: #{decrypt(password)}"
  else
    puts "Input ERROR"
  end