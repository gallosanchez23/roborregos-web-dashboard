$(document).on('turbolinks:load',  function() {
  setTimeout(function() {
    $('.alert').removeClass('fadeInDown');
    $('.alert').addClass('fadeOutUp');
    setTimeout(function() {
      $('.alert').alert('close');
    }, 1000)
  }, 3500);
});
