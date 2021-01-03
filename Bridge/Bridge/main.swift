import Foundation

var tv = SomeTV()
var console = SomeConsole()

var remote = AdvancedRemote(tv)
var coolRemote = FuturisticRemote(console)

remote.togglePower() // Телевизор включен
remote.volumeUp() // Уровень звука телевизора установлен на 10.0%
remote.channelUp() // На телевизоре включен 2 канал
remote.mute() // Уровень звука телевизора установлен на 0.0%
remote.togglePower() // Телевизор выключен

coolRemote.togglePower() // Консоль включена
coolRemote.setChannel(to: 30) // На консоли включен 30 канал
coolRemote.setVolumeIn(persent: 80) // Уровень звука консоли установлен на 80.0%
coolRemote.togglePower() // Консоль выключена

coolRemote.changeDevice(to: tv) // Устройство заменено на Bridge.SomeTV
coolRemote.togglePower() // Телевизор включен
coolRemote.setChannel(to: 30) // На телевизоре включен 30 канал
coolRemote.togglePower() // Телевизор выключен
