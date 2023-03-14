function init() as void
    m.positionIndicator = m.top.findNode("positionIndicator")

    boundingRect = m.positionIndicator.boundingRect()
    m.positionIndicator.translation = [(1920 - boundingRect.width)/2, (1080 - boundingRect.width)/2]

    m.positionIndicator.numberOfPages = 5
    m.positionIndicator.highlightIndex = 2

end function