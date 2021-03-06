import QtQuick 1.1
import com.nokia.meego 1.1
import "UIConstants.js" as UI

Item {
    id: root

    height: sectionLabel.height
    width: parent.width

    Image {
        anchors.left: parent.left
        anchors.right: sectionLabel.left
        anchors.rightMargin: UI.DEFAULT_MARGIN
        anchors.verticalCenter: parent.verticalCenter

        source: "image://theme/meegotouch-groupheader"+(theme.inverted?"-inverted":"")+"-background"
    }

    Label {
        id: sectionLabel
        anchors.right: parent.right

        color: "#8c8c8c"
        font.pixelSize: 18
        font.weight: Font.Bold

        text: section
    }
}
