function init() as void
    m.width = m.top.indicatorWidth
    m.height = m.top.indicatorHeight

    m.top.width = m.width
    m.top.height = m.height
    m.top.opacity = 0.5
end function

function onHighlightStatusChange() as void
    isHighLighted = m.top.isHighLighted
    if (isHighLighted)
        m.top.opacity = 1
        m.top.width = m.width * 3
    else
        m.top.opacity = 0.5
        m.top.width = m.width
    end if
end function