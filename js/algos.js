// RELEASE 0

// Take in an array as the argument
// Figure out the length of each string.
// Assign the length as a value for the string. [didn't end up needing to actaully assing the value to the string, but needed to save the value as a variable.]
// Figure out which of the lengths is biggest
  // if num1 is greater than num2 and greater than num3, num1 is largest
  // if num1 is greater than num2 but smaller than num3, num 3 is largest
  // if num1 is smaller than both, then compare num2 and num3. Whichever is bigger will be the biggest string
// Print the string for the longest length.

function largestString(str1, str2, str3) {
  var x = str1.length;
  var y = str2.length;
  var z = str3.length;
    if (x>y && x>z) {
      console.log(str1);
    } else if (x>y && x<z) {
      console.log(str3);
    }  else if (x<y && x<z && y>z) {
      console.log(str2);
    }
}

largestString("word", "hieroglyphics", "washington")
largestString("wingardium leviosa", "expecto patronum", "lumos")

// RELEASE 1

// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) Here are some sample objects and their expected return values:
// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true
//These both return true because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent.
// Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.

// RELEASE 2

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.