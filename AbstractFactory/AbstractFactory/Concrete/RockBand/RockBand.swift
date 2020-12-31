import Foundation

class RockBand: IBand {
    func getVocalist() -> IVocalist {
        RockVocalist()
    }
    
    func getProducer() -> IProducer {
        RockProducer()
    }
    
    func getManager() -> IManager {
        RockManager()
    }
}
