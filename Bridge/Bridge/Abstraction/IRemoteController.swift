import Foundation

/*
 Абстрактный класс, который способен добавлять новый функционал,
 комбинируя базовые методы реализации, при этом оставаясь
 совместимым что с консолью, что с телевизором
 */

protocol IRemoteController {
    var device: IMultimediaDevise { get set }
    
    // в зависимости от состояния устройства включает/выключает его
    func togglePower()

    // уменьшает/увеличивает звук
    func volumeDown()
    func volumeUp()
    
    // переключает на следующий/предыдущий канал
    func channelUp()
    func channelDown()
    
    // переключается на другой девайс
    mutating func changeDevice(to device: IMultimediaDevise)
}

extension IRemoteController {
    var device: IMultimediaDevise {
        self.device
    }
    
    func togglePower() {
        if device.isEnabled() {
            device.turnOff()
        } else {
            device.turnOn()
        }
    }
    
    func volumeDown() {
        device.setVolume(device.currentVolume - 10)
    }
    
    func volumeUp() {
        device.setVolume(device.currentVolume + 10)
    }
    
    func channelDown() {
        device.setChannel(device.currentChannel - 1)
    }
    
    func channelUp() {
        device.setChannel(device.currentChannel + 1)
    }
    
    mutating func changeDevice(to device: IMultimediaDevise) {
        print("Устройство заменено на \(device)")
        self.device = device
    }
}
