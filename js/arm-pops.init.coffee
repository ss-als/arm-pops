$(document).ready ->

  layout  = $ '#layout'
  pseudo  = $ '.pseudo-link'
  content = $ '.content-popup'

  pseudo.click ->
    layout.armPops {
      ajax: true
      dark: false
      depending: true
      pointer: true
      pointerHeight: 20
      layout: layout
      position: 'smart'
      contentContainer: content
      pseudo: $(@)
      outsideClick: true
    }