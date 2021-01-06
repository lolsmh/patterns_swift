import Foundation

/*
 Суть декоратора в том, чтобы добавить новый функционал в класс,
 не изменяя его. Он тоже является плеером, но при этом оборачивает
 любой другой плеер в функционал работы с AVIVideo
 */

class AVIPlayerDecorator: VideoPlayer {
    
    // Оборачиваемый объект
    var wrapee: VideoPlayer
    
    init(_ player: VideoPlayer) {
        self.wrapee = player
    }
    
    func play(_ video: VideoFile) {
        // обработка avi видео
        // и другая логика
        print("Обработано видео в формате avi")
        wrapee.play(video)
    }
}
