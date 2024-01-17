import QtQuick
import QtQuick.Layouts

// requires ButtonSmall.qml
Rectangle{
    color: "#F0F0F0"
    height: menuRow.implicitHeight
    Layout.preferredHeight: height
    ListModel{
        id: menuItems
    }
    GridLayout{
        id: menuRow
        rows:1
        columns: menuItems.count
        Repeater{
            model: menuItems
            delegate:CustomButton{
                buttonSize: "small"
                Layout.fillWidth: false
                mainColor: "#f5f2f2"
                innerText: model.text
                radius: 0
                border.width: 0
                Layout.row: 0
                Layout.column: index
            }
        }
    }
    function addItem(nameItem: string)
    {
        menuItems.append({text:nameItem})
    }
}
