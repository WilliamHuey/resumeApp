$(document).ready () ->
  $('head').append("<style id='stylesTest'></style>")
  $(window).resize () ->
    $('#stylesTest').html '#noShow { width:' + $(window).width() + 'px }'
  $("a[href^=\"#\"]").on "click.smoothscroll", (e) ->
    e.preventDefault()
    target = @hash
    $target = $(target)
    $("html, body").stop().animate
      scrollTop: $target.offset().top
    , 300, "swing", ->
      window.location.hash = target

