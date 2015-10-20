$(document).ready ->

  layout = $ '#layout'
  pseudo = $ '.pseudo-link'
  contentContainer = $ '.content-popup'
  popupContent = contentContainer.find '*'

  pseudo.click ->
    layout.armPops {
      dark: false
      pointer: true
      pointerHeight: 20
      layout: layout
      depending: true
      position: 'smart'
      contentContainer: contentContainer
      content: popupContent
      pseudo: $(@)
      outsideClick: true
    }