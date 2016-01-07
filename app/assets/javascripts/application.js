// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var zombieApp = zombieApp || {};

zombieApp.setup = function() {
  $('#ability1').click(1, function(e){
    e.preventDefault();
    ajaxGetRequest("/ability/keano");
  });
};

zombieApp.abilityHandler = function() {

};

$(document).ready(function() {
  zombieApp.setup(); 
});


function ajaxGetRequest(endPoint) {
    var xmlhttp;

    xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
      if (xmlhttp.readyState == XMLHttpRequest.DONE ) {
        console.log(xmlhttp.responseText); // comment this if you're happy with the response and don't need it in the console
        if(xmlhttp.status == 200) {
          console.log('that all worked just fine');
          $(".characters").load("/story/1 .characters");

        } else if(xmlhttp.status == 404) {
          console.error('There was an error 404');
        } else {
          console.error('something else other than 200 or 404 was returned')
        }
      }
    }

    xmlhttp.open("GET", endPoint, true);
    xmlhttp.setRequestHeader('X-Requested-With', 'XMLHttpRequest'); // header to let the server know this request came from AJAX rather than a browser refresh
    xmlhttp.send();
  }

