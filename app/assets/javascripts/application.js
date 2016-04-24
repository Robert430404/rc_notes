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
$(function() {
  init();
});
$(window).bind('page:change', function() {
  init();
});
function init(){
  var titleField    = document.getElementById('title-field');
  var editableTitle = document.getElementById('editable-title');

  if(titleField)
  {
    titleField.onkeyup = function () {
      editableTitle.innerHTML = this.value;
    }
  }

  setTimeout(function () {
    var elem = document.querySelector('.grid');
    var msnry = new Masonry( elem, {
      // options
      itemSelector: '.grid-item',
      columnWidth: 400
    });

    // element argument can be a selector string
    //   for an individual element
    var msnry = new Masonry( '.grid', {
      // options
    });

    $('.card').css({
      'opacity': 1,
      'transform': 'translateY(0%)'
    });
  }, 300);
}
