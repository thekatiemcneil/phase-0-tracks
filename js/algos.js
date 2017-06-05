// // RELEASE 0

// // Take in an array as the argument
// // Figure out the length of each string.
// // Assign the length as a value for the string. [didn't end up needing to actaully assing the value to the string, but needed to save the value as a variable.]
// // Figure out which of the lengths is biggest
//   // if num1 is greater than num2 and greater than num3, num1 is largest
//   // if num1 is greater than num2 but smaller than num3, num 3 is largest
//   // if num1 is smaller than both, then compare num2 and num3. Whichever is bigger will be the biggest string
// // Print the string for the longest length.

// function largestString(str1, str2, str3) {
//   var x = str1.length;
//   var y = str2.length;
//   var z = str3.length;
//     if (x>y && x>z) {
//       console.log(str1);
//     } else if (x>y && x<z) {
//       console.log(str3);
//     }  else if (x<y && x<z && y>z) {
//       console.log(str2);
//     }
// }

// largestString("word", "hieroglyphics", "washington")
// largestString("wingardium leviosa", "expecto patronum", "lumos")

// // RELEASE 1

// // yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// // yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true

// // Define function that takes in two hashes as an argument.
// // Iterate through each item in the first hash
//   // Compare to the second hash and see if anything matches.
//     // If matches, true (print true)
//     // Otherwise, false (print false)
// // end

// function objectMatch(object1, object2) {
//   for (var key in object1); {
//     if (object1[key] == object2[key]) {
//       return console.log("true") }
//     else {
//       return console.log("false") }
//   }
// }

// objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// objectMatch({name: "Steven", age: 20}, {name: "Tamir", age: 54});
// objectMatch({name: "Harry Potter", age: 13}, {name: "Sirius Black", age: 33});

// RELEASE 2

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// Create method to generate a random string with 1-10 characters
  // define the new method, which does not take arguments
  // assign random int to character length value
  // run a for loop for each number in char length value
    // for each number, pick a random character from the alphabet
      // alphabet can be a separate string, split by ""
    // add the random character to the randomstring
  // When loop is complete, return the string

// Take in length as the argument for the random array method.
// Create new array randomArray
// Run a loop for the number of the integer (minus one to accomodate for zero indexing)
// For each item in the loop, run them through the random string method
// When loop runs out, array is complete
// return the array

// Additional: run the resulting array through the largestString method

function randomString() {
  var randNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var randChar = "abcdefghijklmnopqrstuvwxyz";
  var charLength = randNum[Math.floor(Math.random() * randNum.length)];
  var string = "";
  while (string.length < charLength)
    string += randChar.charAt(Math.floor(Math.random() * randChar.length));
  return string
}

console.log(randomString())

g
// function randomStrings(int) {
//   var randNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   var randChar = "abcdefghijklmnopqrstuvwxyz".split("");
//   var randomArray = [];
//   for (int; int = 0; int--) {

//   }
//   console.log(randomArray)
// }
// console.log(randomStrings(3))