import Foundation

class SomeConsole: IMultimediaDevise {
    var isTurnedOn: Bool = false
    var currentChannel: Int = 1
    var currentVolume: Double = 0
    
    func isEnabled() -> Bool {
        self.isTurnedOn
    }
    
    func setVolume(_ persent: Double) {
        self.currentVolume = persent
        print("Уровень звука консоли установлен на \(currentVolume)%")
    }
    
    func setChannel(_ channel: Int) {
        self.currentChannel = channel
        print("На консоли включен \(currentChannel) канал")
    }
    
    func turnOn() {
        self.isTurnedOn = true
        print("Консоль включена")
    }
    
    func turnOff() {
        self.isTurnedOn = false
        print("Консоль выключена")
    }
}
