import Foundation

var tv = SomeTV()
var console = SomeConsole()

var remote = AdvancedRemote(tv)
var coolRemote = FuturisticRemote(console)

remote.togglePower() //console: Телевизор включен
remote.volumeUp() //console: Уровень звука телевизора установлен на 10.0%
remote.channelUp() //console: На телевизоре включен 2 канал
remote.mute() //console: Уровень звука телевизора установлен на 0.0%
remote.togglePower() //console: Телевизор выключен

coolRemote.togglePower() //console: Консоль включена
coolRemote.setChannel(to: 30) //console: На консоли включен 30 канал
coolRemote.setVolumeIn(persent: 80) //console: Уровень звука консоли установлен на 80.0%
coolRemote.togglePower() //console: Консоль выключена

coolRemote.changeDevice(to: tv) //console: Устройство заменено на Bridge.SomeTV
coolRemote.togglePower() //console: Телевизор включен
coolRemote.setChannel(to: 30) //console: На телевизоре включен 30 канал
coolRemote.togglePower() //console: Телевизор выключен
