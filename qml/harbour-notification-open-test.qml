import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Notifications 1.0

ApplicationWindow {
    initialPage: Component {
        Page {
            id: page

            Notification {
                id: notification
                appName: "My app"
                summary: "My notification"
                // It's not even needed to implement the interface to demonstrate the problem
                remoteActions: ([remoteAction("", "My action", "org.myorg.notification-open-test", "/org/myorg/notification-open-test", "org.myorg.notification-open-test", "myMethod")])
            }

            Button {
                anchors.centerIn: parent
                text: "Publish notification"
                onClicked: notification.publish()
            }
        }
    }
}
