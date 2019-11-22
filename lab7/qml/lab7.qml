import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { MainPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    
    property var deletedPages: 0
    property var addedPages: 0
    property var currentDepth: 0
    
    signal onDepthChanged()

    Component.onCompleted: pageStack.onDepthChanged.connect(onDepthChangedfunc)

        function onDepthChangedfunc() {
            if (pageStack.depth - currentDepth > 0){
                    currentDepth++;
                    addedPages++;
                }
            if (pageStack.depth - currentDepth <= 0){
                    currentDepth--;
                    deletedPages++;
                }
        }
}
