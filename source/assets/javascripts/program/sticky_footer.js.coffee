sticky_footer = ->
  footer    = $("footer")
  position  = footer.position()
  height    = $(window).height()
  height    = height - position.top
  height    = height - footer.height()

  if height > 0
    footer.css "margin-top": "#{height}px"

$ ->
  sticky_footer()
