$(document).ready(function() {
  $(".sbtn").click(function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).replaceWith('<span class="saved">saved</span>');
    $.post('/user_links', $('#new_user_link').serialize()).success(function(data) {
      console.log('done');
          document.open();
          document.write(data);
          document.close();
    });
  });
})
