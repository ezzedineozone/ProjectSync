import QtQuick
import QtQuick.Layouts
Rectangle{
    property double completion: 0
    border.color: "#d6d6d6"
    border.width:1
    color: "white"
    width:250
    height:15
    Layout.preferredWidth: width
    Layout.preferredHeight: height
    GridLayout{
        Rectangle{
            Layout.topMargin: 1
            Layout.leftMargin: 1
            id: progress
            width: 0
            height: parent.parent.height - parent.parent.border.width * 2
            color:"#47fc7d"
        }
        Layout.margins: 2
    }



    function modifyCompletion(value: double)
    {
        progress.width = value * progress.parent.parent.width - progress.parent.parent.border.width;
    }
}
