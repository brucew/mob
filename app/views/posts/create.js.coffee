$('<%= escape_javascript(render(:partial => @post))%>')
  .appendTo('#posts')
  .hide()
  .fadeIn()

$('#new_post')[0].reset()
