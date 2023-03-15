function init() as void
    m.widthScalingAnimation = m.top.findNode("widthScalingAnimation")
    m.widthInterPolator = m.top.findNode("widthInterPolator")

    m.width = m.top.indicatorWidth
    m.height = m.top.indicatorHeight

    m.top.width = m.width
    m.top.height = m.height
    m.top.opacity = 0.5

    m.top.observeField("id", "onSettingId")
end function

function onSettingId() as void
    m.widthInterPolator.fieldToInterp = m.top.id + ".width"
    m.widthInterPolator.keyValue = [ m.width, m.width * 3]
end function

function onHighlightStatusChange() as void
    isHighLighted = m.top.isHighLighted
    m.widthScalingAnimation.control = "stop"
    if (isHighLighted)
        m.top.opacity = 1
        m.widthInterPolator.reverse = false
        m.widthScalingAnimation.control = "start"
    else
        m.top.opacity = 0.5
        m.top.width = m.width
        m.widthInterPolator.reverse = true
        m.widthScalingAnimation.control = "start"
    end if
end function