$('#<%= dom_id(@post) %>')
  .fadeOut ->
    $(this).remove()