console.log("The script is running!");

function addBlackBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid black";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addBlackBorder);
