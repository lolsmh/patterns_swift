import Foundation

class SomePlayer: VideoPlayer {
    func play(_ video: VideoFile) {
        print("Проигрывается Даня_Голенький_Купается.\(video.format)")
    }
}
