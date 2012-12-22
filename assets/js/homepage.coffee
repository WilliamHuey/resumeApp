$(document).ready () ->
  $('head').append("<style id='stylesTest'></style>")
  $(window).resize () ->
    $('#stylesTest').html '#noShow { width:' + $(window).width() + 'px }'