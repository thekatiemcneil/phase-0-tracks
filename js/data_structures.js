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

function Car(make, color, year) {
  this.make = make;
  this.color = color;
  this.year = year;

  this.vroom = function() {console.log("Vroom vroom!"); };
}

console.log("Lets build a car!")

var anotherCar = new Car("Jeep", "Red", 1993);
console.log(anotherCar);
console.log("Our car is speedy!");
anotherCar.vroom();
console.log("--------");
console.log("Lets build another car!");
var yetAnotherCar = new Car("Buddy", "Lime Green", 2016);
console.log(yetAnotherCar);
console.log("This car is actually a scooter, but it can still go fast!");
yetAnotherCar.vroom();
console.log("-------");