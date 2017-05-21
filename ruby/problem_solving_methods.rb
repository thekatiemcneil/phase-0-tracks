# numbers = [123, 47, 901, 26, 53]

# def find_array(array, integer)
#     #take into consideration the array, numbers
#     #take the integer we want to find
#     #scan array to see if integer is in the array
#     i = 0
#     while i < array.length
#         array.each { |number| = integer }
#             # if number == integer
#                 p i
#             # else
#                 # p nil
#             end
#         end
#         index += 1
#     end
#     #if integer is in array, print what index integer is at
#     #if integer is not in array, print nil
# end

# find_array(numbers, 123)

# create cache for sequence numbers
@cache = {}; @cache[1] = 0; @cache[2] = 1
# define the method
def fibonacci(n)

    @cache[n] ||= fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(100)
# puts "#{n}'s fibonacci value is #{fibonacci(n)}"