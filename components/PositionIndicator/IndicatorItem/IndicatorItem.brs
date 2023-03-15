'''''''''
' init: Starting point of the View
' 
'''''''''
function init() as void
    m.widthScalingAnimation = m.top.findNode("widthScalingAnimation")
    m.scaleInterPolator = m.top.findNode("scaleInterPolator")

    ' Setting the initial values to the UIElements
    reloadView()

    m.top.observeField("id", "onSettingId")
end function

'''''''''
' reloadView: Setting up the UIValues
' 
'''''''''
function reloadView() as void
    m.width = m.top.indicatorWidth
    m.height = m.top.indicatorHeight

    m.top.width = m.width
    m.top.height = m.height
    m.top.scaleRotateCenter = [m.width/2, m.height/2]
    m.top.opacity = 0.5
end function

'''''''''
' onSettingId: Callback function to get id of th view when setting or changing it
' 
'''''''''
function onSettingId() as void
    m.scaleInterPolator.fieldToInterp = m.top.id + ".scale"
    m.scaleInterPolator.keyValue = [ [1, 1], [3, 1]]
end function

'''''''''
' onHighlightStatusChange: CallBack function for knowing highLight status of the view
' 
'''''''''
function onHighlightStatusChange() as void
    isHighLighted = m.top.isHighLighted
    m.widthScalingAnimation.control = "stop"
    if (isHighLighted)
        m.top.opacity = 1
        m.scaleInterPolator.reverse = false
        m.widthScalingAnimation.control = "start"
    else
        m.top.opacity = 0.5
        m.top.width = m.width
        m.scaleInterPolator.reverse = true
        m.widthScalingAnimation.control = "start"
    end if
end function