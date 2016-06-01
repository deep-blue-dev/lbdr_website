// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery2
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$(function() {

  $( document ).on('ready page:load', function() {
    $('.banner-body').slick();  
  });

  $(".navbar-brand").hide();
  $(window).scroll(function() {
    var x = $(window).scrollTop();
      if (x <= 42) {
        $(".navbar-brand").hide();
        $(".lbdr-logo-overlay").fadeIn();
      } else {
        $(".navbar-brand").show();
        $(".lbdr-logo-overlay").fadeOut();
      }
  });
});

// Navbar Menu Toggle, grow on hover
$(function() {
  $( ".navbar-toggle" )
    .mouseenter(function() {
      $(".icon-bar").animate({
        height: '4px',
        width: '25px'
      });
    })
    .mouseleave(function() {
      $(".icon-bar").animate({
        height: '2px',
        width: '22px'
      });
    });
});

// Make all the content fade in on scroll.
$(function() {
  $(window).scroll( function(){
    $('.fadeInBlock').each( function(i){
      var bottom_of_object = $(this).offset().top + $(this).outerHeight();
      var bottom_of_window = $(window).scrollTop() + $(window).height();
      /* Adjust the "200" to either have a delay or that the content starts fading a bit before you reach it  */
      bottom_of_window = bottom_of_window + 170;
      if( bottom_of_window > bottom_of_object ){
          $(this).animate({'opacity':'1'},500);
      }
    });
  });
});
