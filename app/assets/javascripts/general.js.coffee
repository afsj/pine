$ ->  
  $('.dropdown-menu .filter ul').bind "mousewheel", "DOMMouseScroll", (e) ->
    scrollTo = null

    if (e.type == 'mousewheel')
      scrollTo = (e.originalEvent.wheelDelta * -1)
    else if (e.type == 'DOMMouseScroll')
      scrollTo = 40 * e.originalEvent.detail

    if (scrollTo)
      e.preventDefault()
      $(this).scrollTop(scrollTo + $(this).scrollTop())
  
  $('nav').hover (->
    $('.switcher').css('display', 'block')
    return
  ), ->
    $('.switcher').css('display', 'none')
    return