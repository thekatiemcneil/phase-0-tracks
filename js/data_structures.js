var colors = ["cerulean", "sparkle", "rainbow", "glitter"]
var names = ["Leslie", "Ron Swanson", "Andy", "Jean-Ralphio"]

colors.push("surprise color")
names.push("Lil Sebastian")

console.log(colors)
console.log(names)

function createHorses(names, colors)
{
  var horses = {}
  if (names.length != colors.length)
    return null;
  for(var index in names)
    horses[names[index]] = colors[index];
  return horses;
}
var horses = createHorses(names, colors)
console.log(horses)