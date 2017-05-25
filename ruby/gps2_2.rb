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

grocery_list = make_a_list("stuff, things, items")
p grocery_list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
def add_item(grcy_list, string, i)
  grcy_list[string] = i
end

add_item(grocery_list, "bananas", 3)
p grocery_list

# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: