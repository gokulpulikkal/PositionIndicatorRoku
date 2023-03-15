
function init() as void
    m.indicatorLayoutGroup = m.top.findNode("indicatorLayoutGroup")
end function

function onNumberOfPagesChange() as void
    m.indicatorLayoutGroup.removeChildrenIndex(m.indicatorLayoutGroup.getChildCount(), 0)
    childCount = m.top.numberOfPages
    for i = 0 to childCount - 1
        indicatorItem = CreateObject("roSGNode", "IndicatorItem")
        indicatorItem.id = "indicator_" + i.toStr()
        m.indicatorLayoutGroup.appendChild(indicatorItem)
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