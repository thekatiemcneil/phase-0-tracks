// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.

// Take in an array as the argument
// Figure out the length of each string.
// Assign the length as a value for the string.
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
