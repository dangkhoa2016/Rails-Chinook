// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";


document.addEventListener("turbo:before-fetch-request", function () {
  console.log("Turbo before-fetch-request event fired");
  // Show the loading indicator
  document.getElementById("loading-indicator").style.display = "flex";
});

document.addEventListener("turbo:before-fetch-response", function () {
  console.log("Turbo before-fetch-response event fired");
  // Show the loading indicator
  document.getElementById("loading-indicator").style.display = "none";
});

document.addEventListener("turbo:load", function () {
  console.log("Turbo load event fired");
  // Hide the loading indicator
  document.getElementById("loading-indicator").style.display = "none";
});
