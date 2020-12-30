//
//  RockBand.swift
//  AbstractFactory
//
//  Created by Даниил Апальков on 30.12.2020.
//

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
