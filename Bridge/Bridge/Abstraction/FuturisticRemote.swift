import Foundation

class FuturisticRemote: IRemoteController {
    var device: IMultimediaDevise
    
    // новый функционал
    func mute() {
        device.setVolume(0)
    }
    func setVolumeIn(persent: Double) {
        device.setVolume(persent)
    }
    func setChannel(to channel: Int) {
        device.setChannel(channel)
    }
    
    init(_ device: IMultimediaDevise) {
        self.device = device
    }
}
