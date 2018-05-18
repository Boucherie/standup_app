$(document).on '(turbolinks:load', function() {
  $('.alert').delay(5000).slideUp(5000, function(){
    $('.alert').alert 'close';
  });
});
