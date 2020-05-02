$(document).on('turbolinks:load',  function() {
  $('#new_member_form').on('submit', function() {
    username = $('#member_github_username').val();
    $('#member_username').val(username);
  });
});
