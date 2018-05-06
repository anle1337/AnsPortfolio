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



var ready = function() {

  $(".project_bg").each(function(index, element) {

    var i = index + 5;

    $(element).mouseenter(function() {
      $(element).fadeToggle(100, function() {
        $(element).addClass("img" + i);
        $(element).find(".project").css({visibility:"visible"});
        $(element).fadeToggle(100);
      });
    });

    $(element).mouseleave(function(){
      $(element).fadeToggle(100, function() {
        $(element).removeClass("img" + i);
        $(element).find(".project").css({visibility:"hidden"});
        $(element).fadeToggle(100);
      });
    });
  });

  // $(".collapsible").each(function(index, element) {
  //  $(element).find("h2").click(function() {
  //    $(element).find(".skills").slideToggle(500);
  //  });
  // });

  $(".collapsible").each( function(index, element) {
    $(element).find("h2").click( function() {
      $("html, body").animate({scrollTop: $(element).offset().top -150 });;
      $(element).find(".skills_ul").each( function(index1, element1) {
        if ( $(element).hasClass("collapsed") == true ) {
          $(element1).find("li").each( function(index2, element2) {
            $(element2).delay(index2 * 50).animate({"opacity": "0"}, 50);
          });
        }
        else if ( $(element).hasClass("collapsed") == false ) {
          $(element1).find("li").each( function(index2, element2) {
            $(element2).delay(index2 * 50).animate({"opacity": "1"}, 50);
          });
        };
        $(element).toggleClass("collapsed");
      });
    });
  });

  navlinks();

};



$(document).ready(ready);

$(document).on('page:load', ready);





function navlinks() {
  var links = ["Projects", "Skills", "Front End", "Back End", "Contact"];

  links.forEach( function(element, index) {
    var link = "li:contains('" + element.toUpperCase() + "')";
    var element_loc = "h1:contains('" + element +"')";
    $(link).click( function() {
      $("html, body").animate({scrollTop:$(element_loc).offset().top-20}, 1000);
    });
  });
};



