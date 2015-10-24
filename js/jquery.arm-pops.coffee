(($) ->
  jQuery.fn.armPops = (options) ->

    options = $.extend
      dark:             true        # dark background
      pointer:          false       # triangle pointer
      pointerHeight:    null
      depending:        false       # depending for different content
      position:         'smart'     # popup position (top, bottom or smart)
      pseudo:           null        # pseudo link
      ajax:             false       # ajax mode
      layout:           null
      contentContainer: null
      outsideClick:     true        # click outside popup
    , options;

    make = ->
      dark    = null
      popup   = null
      close   = null
      content = null

      popupContainer   = '<div id="popup" />'
      closeContainer   = '<div class="close" />'
      darkContainer    = '<div id="dark" />'

      layout           = options.layout
      pseudo           = options.pseudo
      container        = options.contentContainer     # container from content
      pointerHeight    = options.pointerHeight        # triangle pointer height

      # Get content for popup
      container.each ->
        content = this.children

      # Create popup
      if options.dark
        layout.prepend darkContainer

        # Get dark after create
        dark = $ '#dark'

        dark.append popupContainer
      else
        layout.prepend popupContainer

      # Get popup after create
      popup = $ '#popup'

      if options.pointer
        popup.addClass 'pointer'

      # Add content on popup
      if options.ajax
        console.log 'ajax'
        return

      if options.depending
        dependClass = null
        containerClass = container[0].className.split ' '

        pseudoClasses = pseudo.attr 'class'
        .split ' '

        container.each ->
          containerClasses = this.className.split ' '

          for a in containerClasses

            for b in pseudoClasses

              if a is b
                dependClass = b

        content = $ '.' + containerClass[0] + '.' + dependClass + ' *'

        content.clone().appendTo popup

      if options.dark is false
        layoutWidth      = layout[0].offsetWidth
        layoutHeight     = layout[0].offsetHeight
        popupWidth       = popup[0].offsetWidth
        popupHeight      = popup[0].offsetHeight

        pseudoOffsetTop  = options.pseudo[0].offsetTop
        pseudoOffsetLeft = options.pseudo[0].offsetLeft
        pseudoWidth      = options.pseudo[0].offsetWidth
        pseudoHeight     = options.pseudo[0].offsetHeight

        pseudoRightDistance  = layoutWidth  - pseudoOffsetLeft - pseudoWidth
        pseudoBottomDistance = layoutHeight - pseudoOffsetTop  - pseudoHeight

        # popup top position
        if options.position is 'top'
          popup.css {
            top: (pseudoOffsetTop - pseudoHeight - popupHeight) + 'px'
          }

        # popup bottom position
        if options.position is 'bottom'
          popup.addClass 'top'
          popup.css {
            top: (pseudoOffsetTop - pseudoHeight + popupHeight) + 'px'
          }

        # popup smart position
        if options.position is 'smart'

          if popupHeight < pseudoBottomDistance
            popup.addClass 'top'
            popup.css {
              top: (pseudoOffsetTop + pseudoHeight + pointerHeight) + 'px'
            }
          else
            popup.css {
              bottom: (layoutHeight - pseudoOffsetTop + pointerHeight) + 'px'
            }

        if popupWidth > pseudoRightDistance
          popup.addClass 'right'
          popup.css {
            right: (layoutWidth - pseudoOffsetLeft - pseudoWidth) + 'px'
          }
        else
          popup.css {
            left: pseudoOffsetLeft + 'px'
          }

      # Close popup
      popup.append closeContainer

      # Get close after create
      close = $ '.close'

      closePopup = ->
        if options.dark
          dark.remove()
        else
          popup.remove()

      popup.click (e) ->
        e.stopPropagation()

      pseudo.click (e) ->
        e.stopPropagation()

      close.click ->
        do closePopup

      $ document
      .keyup (e) ->
        if e.keyCode == 27
          do closePopup

      if options.outsideClick
        console.log 'outside click'

    return this.each make

)(jQuery)
