import Foundation

class RapBand: IBand {
    func getVocalist() -> IVocalist {
        RapVocalist()
    }
    
    func getProducer() -> IProducer {
        RapProducer()
    }
    
    func getManager() -> IManager {
        RapManager()
    }
}
