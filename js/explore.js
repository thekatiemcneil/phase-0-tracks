// Take in a string as an argument (ex. "hello")
// Create a new, empty string
// Iterate through each charater in original string and assign a new index value (ex. originalstring(0) would be come newstring(-1), originalstring(1) would become newstring(-2).)
// after iteration is complete, print the resulting new string

function reverseStr(string) {
  var newstr = '';
  for (var i = string.length - 1; i >= 0; i--)
    newstr += string[i];
  return newstr;
}

console.log(reverseStr("hello"))
console.log(reverseStr("DevBootcamp"))