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
                Component.onCompleted: {
                    var actions = [remoteAction("", "My action", "org.myorg.notification-open-test", "/org/myorg/notification-open-test", "org.myorg.notification-open-test", "myMethod")]

                    var inputAction = remoteAction("", "Input action", "org.myorg.notification-open-test", "/org/myorg/notification-open-test", "org.myorg.notification-open-test", "myInputMethod")
                    inputAction.type = "input"
                    actions.push(inputAction)

                    remoteActions = actions
                }
            }

            Button {
                anchors.centerIn: parent
                text: "Publish notification"
                onClicked: notification.publish()
            }
        }
    }
}
