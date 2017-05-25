# Method to create a list
def make_a_list(string)
  grocery_list = {}
  list_array = string.split(" ")
  # now we have an array
  list_array.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end


# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
def add_item(grcy_list, string, i=1)
  grcy_list[string] = i
end


# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
def remove_item(grcy_list, string)
 grcy_list.delete(string)
end
# steps:
# output:


# Method to update the quantity of an item
# input:
# steps:
# output:
def update_quantity(grcy_list, string, i)
  # hash(key[value])
  grcy_list[string] = i
end


# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list(grcy_list)
  grcy_list.each do |key, value|
    puts "You need #{value} #{key}."
  end
end

grocery_list = make_a_list("stuff things items")
p grocery_list
add_item(grocery_list, "bananas", 5)
p grocery_list
remove_item(grocery_list, "bananas")
p grocery_list
update_quantity(grocery_list, "stuff", 3)
p grocery_list
print_list(grocery_list)


# REVEIW and REFLECT

# What did you learn about pseudocode from working on this challenge?
# I guess we didn't do the best job utilizing pseudocode in this challenge, aside from what was already provided. If there hadn't been anything at all provided, we probably would have put more effort into writing some.

# What are the tradeoffs of using arrays and hashes for this challenge?
# It really didnt' seem like a viable option to use arrays for this challenge. Using a hash was the only logical option. The tradeoff is that more syntax was required (at least more that I wasn't as familiar with) in order to actually add content to the hash. Once we figured out the proper syntax for it, though, it was quite simple.

# # What does a method return?
# A method returns whatever the final output value of the method is. So, if you run through a series of operations, but your final operation is to print a message, your method outputs that printed message. We learned that, for some of our methods, we needed to assign a return value.

# What kind of things can you pass into methods as arguments?
# In this example, we passed through hashes, strings, and integers. Really, you can input just about any object as an argument.

# How can you pass information between methods?
# In order to pass information between methods, the information needs to either exist independently from the methods, or it needs to be taken in as an argument for each of the arguments. In our example, we needed the grocery list to exist within each of the arguments, so we needed to include it as an argument for each of the methods. That enabled us to pass information into a specific argument, and for our methods to be able to create and edit more than one grocery list.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge helped to solidify my confidence in writing and using methods. The biggest thing that was solidified for me was how to write and edit info in a hash using methods. I was pretty confident in how to do this with arrays, but hashes were pretty uncertain for me. I now feel much more confident working with hashes. That said, I always feel like there is room for improvement and further understanding in how methods work...and really just everything in Ruby.