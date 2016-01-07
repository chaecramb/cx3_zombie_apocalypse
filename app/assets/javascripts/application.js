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
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var zombieApp = zombieApp || {};

zombieApp.eventResult = function(e) {
  console.log("event result callback");
  if (e.result === "success") {
    console.log("yay");
    $('.event-success').attr('style', 'display: inline');
  } else if (e.result === "boo") {
    $('.event-failure').attr('style', 'display: inline');
    console.log("boo");
  };
};

zombieApp.setup = function() {
  var no_of_chars = 22;
  $('#ability1').click(1, function(e){
    e.preventDefault();
    ajaxGetRequest("/ability/1");
  });
  $('#submit-button').click(1, function(e){
    e.preventDefault();
    var characters = [];
    var no_of_chars = 22;
    for (var i = 1; i <= no_of_chars; i++) {
      if ($('#' + String(i)).is(":checked")){
        characters.push(i);
      };
    };
    sendParams("/story/event_result", characters);
    $('#next-link').attr('style', 'display: inline');
    $('#event-form').attr('style', 'display: none');
  });
  zombieApp.startChatting();
};

$(document).ready(function() {
  zombieApp.setup(); 
});

function sendParams(url, q){
  $.ajax({
    url: url,
    type: 'get',
    data: {'q':q },
    contentType: 'json',
    success: zombieApp.eventResult,
    error: console.log('there was an error with event callback')
  });
}


function ajaxGetRequest(endPoint) {
    var xmlhttp;

    xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
      if (xmlhttp.readyState == XMLHttpRequest.DONE ) {
        console.log(xmlhttp.responseText); // comment this if you're happy with the response and don't need it in the console
        if(xmlhttp.status == 200) {
          console.log('that all worked just fine');
          $(".characters").load("/story/1 .characters");
          $(".abilities_list").load("/story/1 .abilities_list");

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

zombieApp.randomDelay = function() {
  return (Math.random() * 5 + 2) * 1000;
}

zombieApp.startChatting = function() {
  if($('#chatlog')) {
    console.log('startChatting');
    setTimeout(zombieApp.chatOpener, zombieApp.randomDelay());
  }
};

zombieApp.chatOpener = function() {
  console.log('chatOpener');
  $.get('/story/opener').success(function(data) {
    zombieApp.drawOpener(data);

    var delay = 0;
    for (i = 0; i < (Math.floor(Math.random() * 4) + 2); i++) { 
      console.log(delay);
      delay += zombieApp.randomDelay();
      setTimeout(function(){ zombieApp.chatReply(data.character_id)}, delay);
    }
    setTimeout(zombieApp.startChatting, delay + 2000);
  });
};

zombieApp.chatReply = function(character_id) {
  console.log('chatReply');
  $.get('/story/reply', {character_id: character_id}).success(function(data) {zombieApp.drawReply(data)});  
}


zombieApp.drawOpener = function(data) {
  $('#chatlog').append("<li class='opener'><h1>"+data.name+"</h1><p>"+data.opener+"</p></li>");
};

zombieApp.drawReply = function(data) {
  $('#chatlog').append("<li class='reply'><h1>"+data.name+"</h1><p>"+data.reply+"</p></li>");
};




// zombie app needs to request a opener
  // results of opener need to be added to the chatlog
  // then 1-3 replies
  // repeat 

