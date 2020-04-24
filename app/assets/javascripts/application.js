// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .



document.addEventListener("DOMContentLoaded", (event) => {
    const third = document.querySelector("#third");
    const circle = document.getElementById("circle-top");
    
    console.log("current width:" + window.innerWidth);
    if (window.innerWidth < 992) {
      circle.style.display = "none";
      third.classList.remove("third-title");
      third.classList.add("third-title-mobile");
      circle.style.visibility = "hidden";
    } else {
      circle.style.visibility = "visible";
      third.classList.remove("third-title-mobile");
      third.classList.add("third-title");
    }
    window.addEventListener("resize", (event) => {
      reduceSize();
    });
  });
  
  const reduceSize = () => {
    const circle = document.getElementById("circle-top");
    const third = document.querySelector("#third");
    
    if (window.innerWidth < 992) {
      
      console.log("removing circle");
      
      third.classList.remove("third-title");
      third.classList.add("third-title-mobile");
      circle.style.visibility = "hidden";
    } else {
      circle.style.visibility = "visible";
      third.classList.remove("third-title-mobile");
      third.classList.add("third-title");
    }
  };
  