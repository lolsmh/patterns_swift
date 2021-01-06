import Foundation

var mp4Video = MP4Video()
var player = SomePlayer()
player.play(mp4Video) //console: Проигрывается Даня_Голенький_Купается.mp4

var aviVideo = AVIVideo()
var aviPlayer = AVIPlayerDecorator(player)

aviPlayer.play(aviVideo)
//console:
// Обработано видео в формате avi
// Проигрывается Даня_Голенький_Купается.avi
