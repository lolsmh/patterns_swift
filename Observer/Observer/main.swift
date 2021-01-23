import Foundation

var incognitoBrowser = Incognito()
var appWindow = Window()
var brightness = Brightness()
var door = Door()

var coolMode = CoolMode()

coolMode.subscribe(subscriber: incognitoBrowser)
coolMode.subscribe(subscriber: appWindow)
coolMode.subscribe(subscriber: brightness)
coolMode.subscribe(subscriber: door)

while true {
    var _ = readLine()
    coolMode.isToggled.toggle()
}
