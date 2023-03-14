
function init() as void
    m.indicatorLayoutGroup = m.top.findNode("indicatorLayoutGroup")
end function

function onNumberOfPagesChange() as void
    m.indicatorLayoutGroup.removeChildrenIndex(m.indicatorLayoutGroup.getChildCount(), 0)
    childCount = m.top.numberOfPages
    for i = 0 to childCount - 1
        m.indicatorLayoutGroup.appendChild(CreateObject("roSGNode", "IndicatorItem"))
    end for
end function

function onHighlightIndexChange() as void
    highlightIndex = m.top.highlightIndex
    if (highlightIndex < m.indicatorLayoutGroup.getChildCount() AND highlightIndex >= 0)
        removeHighlightFromItems()
        m.indicatorLayoutGroup.getChild(highlightIndex).isHighLighted = true
    end if
end function

function removeHighlightFromItems() as void
    for i = 0 to m.indicatorLayoutGroup.getChildCount() - 1
        m.indicatorLayoutGroup.getChild(i).isHighLighted = false
    end for
end function