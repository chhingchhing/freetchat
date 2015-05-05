$(document).ready ->
  $('#characterLeft').text '140 characters left'
  $('#message').keydown ->
    max = 140
    len = $(this).val().length
    if len >= max
      $('#characterLeft').text 'You have reached the limit'
      $('#characterLeft').addClass 'red'
      $('#btnSubmit').addClass 'disabled'
    else
      ch = max - len
      $('#characterLeft').text ch + ' characters left'
      $('#btnSubmit').removeClass 'disabled'
      $('#characterLeft').removeClass 'red'
    return
  return