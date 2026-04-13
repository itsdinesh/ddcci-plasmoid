import QtQuick
import QtQuick.Controls as QQC2
import org.kde.kirigami as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_stepSize: stepSize.text
    property alias cfg_executable: executable.text
    property alias cfg_showBuiltIn: showBuiltIn.checked

    QQC2.TextField {
        id: stepSize
        Kirigami.FormData.label: i18n("Step size:")
        validator: RegularExpressionValidator{regularExpression: /^[0-9,/]+$/}
    }

    QQC2.TextField {
        id: executable
        Kirigami.FormData.label: i18n("Backend executable command:")
    }

    QQC2.CheckBox {
        id: showBuiltIn
        Kirigami.FormData.label: i18n("Show built-in monitor:")
    }
}
