function init() as void
    m.positionIndicator = m.top.findNode("positionIndicator")

    boundingRect = m.positionIndicator.boundingRect()
    m.positionIndicator.translation = [(1920 - boundingRect.width)/2, (1080 - boundingRect.width)/2]

    m.positionIndicator.numberOfPages = 5
    m.positionIndicator.highlightIndex = 2
    m.positionIndicator.setFocus(true)
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if (key = "back") then
            handled = false
        else if (key = "left")
            if (m.positionIndicator.highlightIndex = 0)
                m.positionIndicator.highlightIndex = m.positionIndicator.numberOfPages - 1
            else
                m.positionIndicator.highlightIndex--
            end if
            handled = true
        else if (key = "right")
            if (m.positionIndicator.highlightIndex = m.positionIndicator.numberOfPages - 1)
                m.positionIndicator.highlightIndex = 0
            else
                m.positionIndicator.highlightIndex++
            end if
            handled = true
        end if
    end if
    return handled
end function