// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@popperjs/core";
import "bootstrap";
import "@hotwired/turbo-rails";
import "controllers";


document.addEventListener("turbo:before-fetch-request", function () {
  console.log("Turbo before-fetch-request event fired");
  // Show the loading indicator
  document.getElementById("loading-indicator").style.display = "flex";
});

document.addEventListener("turbo:load", function () {
  console.log("Turbo load event fired");
  // Hide the loading indicator
  document.getElementById("loading-indicator").style.display = "none";
});
