numbers = [123, 47, 901, 26, 53]

def search_array(arr, num)
    #take into consideration the array, numbers
    #take the integer we want to find
    #scan array to see if integer is in the array
    index = nil
    arr.length.times do |x|
        if arr[x] == num
            index = x
        end
    end
    #if integer is in array, print what index integer is at
    #if integer is not in array, print nil
    return index
end

p search_array(numbers, 123)

# # create cache for sequence numbers
# @cache = {}; @cache[1] = 0; @cache[2] = 1
# # define the method
# def fibonacci(n)

#     @cache[n] ||= fibonacci(n-1) + fibonacci(n-2)
# end

# p fibonacci(100)
# # puts "#{n}'s fibonacci value is #{fibonacci(n)}"