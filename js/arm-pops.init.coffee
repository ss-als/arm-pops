$(document).ready ->

  layout  = $ '#layout'
  pseudo  = $ '.pseudo-link'
  content = $ '.content-popup'

  pseudo.click ->
    layout.armPops {
      dark: false
      pointer: true
      pointerHeight: 20
      layout: layout
      depending: true
      position: 'smart'
      contentContainer: content
      pseudo: $(@)
      outsideClick: true
    }