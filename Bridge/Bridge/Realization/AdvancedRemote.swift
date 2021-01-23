import Foundation

class AdvancedRemote: IRemoteController {
    var device: IMultimediaDevise
    
    // новый функционал
    func mute() {
        device.setVolume(0)
    }
    
    init(_ device: IMultimediaDevise) {
        self.device = device
    }
}
