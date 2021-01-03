import Foundation

/*
 Интерфейс, который обеспечивает мультимедийному устройству
 базовый функционал включения, выключения, смены каналов и звука
 */

protocol IMultimediaDevise {
    var isTurnedOn: Bool {get set}
    var currentChannel: Int {get set}
    var currentVolume: Double {get set}
    
    func setVolume(_ persent: Double)
    func setChannel(_ channel: Int)
    func turnOn()
    func turnOff()
    func isEnabled() -> Bool
}
