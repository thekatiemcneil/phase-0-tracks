console.log("The script is running!");

function addRedBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid red";
}

function changeColor(event) {
  event.target.style.color = "blue";
}

function changeFontColor(event) {
  event.target.style.color = "orange";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addRedBorder);

var thing1 = document.getElementById("thing1");
thing1.addEventListener("click", changeColor);

var title = document.getElementById("title");
title.addEventListener("click", changeFontColor);