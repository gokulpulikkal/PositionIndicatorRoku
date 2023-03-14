function init() as void
    m.top.width = 18
    m.top.height = 18
    m.top.opacity = 0.5
end function

function onHighlightStatusChange() as void
    isHighLighted = m.top.isHighLighted
    if (isHighLighted)
        m.top.opacity = 1
    else
        m.top.opacity = 0.5
    end if
end function