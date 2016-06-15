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
  var ready;
  var interval;

  ready = function() {

    $('#brand_courssel').slick({
      centerMode: true,
      slidesToShow: 3,
      arrows: false,
      onAfterChange: function(event, currentSlide) {
        
        var page = currentSlide + 1;

        console.log(page);
      }
    });

    $(".brand-tabs .col-8").click(function(){

      var index = $(this).index() -4;

      console.log(index);

      $( '#brand_courssel' ).slickGoTo( index );  
    });
    

    var banner = document.getElementsByClassName("logo-information");

    $(".arrow-click").click(function(e){

      $('html, body').stop().animate({
          'scrollTop': $( window ).height()
      }, 900, 'swing', function () {
          //window.location.hash = target;
      });

    });

    function startInterval(){
      try{
        clearInterval( interval );
      }catch(e){}

      interval = setInterval(function(){

        $('.banner-body').slickNext();

      }, 5000);
    }

    try{
      banner[0].addEventListener('touchstart', function(e){
        var coords = {
          clientX: e.changedTouches[0].pageX,
          clientY: e.changedTouches[0].pageY
        };

        $('.slick-list').simulate("mousedown", coords);

        try{
          clearInterval( interval );
        }catch(e){}

      }, false);

      banner[0].addEventListener('touchmove', function(e){

        var coords = {
          clientX: e.changedTouches[0].pageX,
          clientY: e.changedTouches[0].pageY
        };

        $('.slick-list').simulate("mousemove", coords);

      }, false);

      banner[0].addEventListener('touchend', function(e){
        var coords = {
          clientX: e.changedTouches[0].pageX,
          clientY: e.changedTouches[0].pageY
        };

        $('.slick-list').simulate("mouseup", coords);

        startInterval();
      }, false);

    }catch(e){}



    $('.banner-body').slick({
      onAfterChange: function(event, currentSlide) {
        
        var page = currentSlide + 1;

        console.log(page);

        $(".banner-description").removeClass("show");
        $(".banner-description").eq(currentSlide).addClass("show");
      }
    });

    startInterval();

    $(".banner-description").eq(0).addClass("show");

    $('.logo-information').mousedown(function(e) {

      var coords = {
          clientX: e.clientX,
          clientY: e.clientY
      };

      $('.slick-list').simulate("mousedown", coords);

      try{
        clearInterval( interval );
      }catch(e){}

    });

    $('.logo-information').mouseup(function(e) {
      var coords = {
          clientX: e.clientX,
          clientY: e.clientY
      };
      $('.slick-list').simulate("mouseup", coords);

      startInterval();
    });

    $('.logo-information').mousemove(function(e){

      var coords = {
          clientX: e.clientX,
          clientY: e.clientY
      };

      // this actually triggers the drag start event
      $('.slick-list').simulate("mousemove", coords);
    });

    $('#tabs').tab();

    function triangle_align(active){

      var li = active;
      var ul = $('.group-info');
      var triangle = $(".triangle");

      var middle = ( li.width() / 2) - ( triangle.width() / 2) ;

      try{
        triangle.stop( true, true ).animate({
          left: li.offset().left - ul.offset().left + middle 
        }, 500, function() {});
      }catch(e){}
    }

    $('.group-info li').click(function(){ 
      triangle_align($(this));
    });

    function align_menu(){
      var menu_height = $('#menu-wrapper').height();
      var window_height = $(".banner-body").height();

      var m_top = ( window_height / 2 ) - (menu_height / 2);
      $('#menu-wrapper').css( "top", (m_top + "px") );
    }

    $(window).resize(function(){
      triangle_align($('.group-info li.active'));
      align_menu();
    });
    
    triangle_align($('.group-info li.active'));

    align_menu();

    var nav_bar = false;
    $('#nav-icon1').click(function(e){

      nav_bar = false;

      $(this).toggleClass('open');

      setTimeout(function(){

        if(nav_bar){
          nav_bar = false;
        }else{
          nav_bar = true;
        }

      }, 100);

    });

    $('nav').click(function(e){
      nav_bar = false;

      setTimeout(function(){

        nav_bar = true;

      }, 100);
    });

    $('body').click(function(e){
      
      if(nav_bar){
        $('#nav-icon1').removeClass('open');
        nav_bar = false;
      }

    });

    $("#menu-wrapper ul li").click(function(e){
      e.preventDefault();
      var slideIndex = $(this).index();

      $( '.banner-body' ).slickGoTo( parseInt(slideIndex) );

      startInterval();
    });
  };

  $(document).ready(ready);
  $( document ).on('page:load', ready);

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
