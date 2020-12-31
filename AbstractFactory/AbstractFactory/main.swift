import Foundation

var rockBand = RockBand()
var (rockVocalist, rockProducer, rockManager) = (
    rockBand.getVocalist(), rockBand.getProducer(), rockBand.getManager())

rockProducer.produceSound()
rockVocalist.singLyrics()
rockManager.manageSong()

var rapBand = RapBand()
var (rapVocalist, rapProducer, rapManager) = (
    rapBand.getVocalist(), rapBand.getProducer(), rapBand.getManager())

rapProducer.produceSound()
rapVocalist.singLyrics()
rapManager.manageSong()


