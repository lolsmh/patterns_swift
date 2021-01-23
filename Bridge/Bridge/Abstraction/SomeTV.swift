import Foundation

class SomeTV: IMultimediaDevise {
    var isTurnedOn: Bool = false
    var currentChannel: Int = 1
    var currentVolume: Double = 0
    
    func isEnabled() -> Bool {
        self.isTurnedOn
    }
    
    func setVolume(_ persent: Double) {
        self.currentVolume = persent
        print("Уровень звука телевизора установлен на \(currentVolume)%")
    }
    
    func setChannel(_ channel: Int) {
        self.currentChannel = channel
        print("На телевизоре включен \(currentChannel) канал")
    }
    
    func turnOn() {
        self.isTurnedOn = true
        print("Телевизор включен")
    }
    
    func turnOff() {
        self.isTurnedOn = false
        print("Телевизор выключен")
    }
}
