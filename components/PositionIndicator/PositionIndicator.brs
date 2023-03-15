
'''''''''
' init: First function that'll execute when creating this component
' 
'''''''''
function init() as void
    m.indicatorLayoutGroup = m.top.findNode("indicatorLayoutGroup")
end function

function onNumberOfPagesChange() as void
    m.indicatorLayoutGroup.removeChildrenIndex(m.indicatorLayoutGroup.getChildCount(), 0)
    childCount = m.top.numberOfPages
    for i = 0 to childCount - 1
        indicatorItem = CreateObject("roSGNode", "IndicatorItem")
        indicatorItem.id = "indicator_" + i.toStr()
        indicatorItem.indicatorWidth = 30
        indicatorItem.indicatorHeight = 30
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