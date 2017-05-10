# define length of string
# define encrypt method
# define decrypt method

# def encrypt(str)
 # encrypt.next
#  index =+ 1
# string.length

# take a string as an argument
# (encrypt) move the string forward one letter
# ex. abc would become bcd
# figure out index of each letter (1, 2, 3)
# move forward one index (2, 3, 4) counter += 1
# return new string based on move forward (b, c, d)
# (decrypt) move the string back one letter to original string
# ex. bcd would become abc
# figure out index of each letter (2, 3, 4)
# move backward one index (1, 2, 3) counter -= 1
# return original string (a, b, c)

# def encrypt(str)
#  "#{str.next}"
# end

# puts encrypt("abc")

def encrypt(string)
  secret_password = ("a".."z").to_a
  result = ""
  index = 0
  while index < string.length
    character = string[index]

    if character == " "
      result += " "
    else
      n = secret_password.index(character)
      n_plus = (n + 1) % secret_password.length
      result += secret_password[n_plus]
    end
    index += 1
  end
  return result
end
puts encrypt("zed")
puts encrypt("xyz")