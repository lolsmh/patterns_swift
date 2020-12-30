//
//  RapBand.swift
//  AbstractFactory
//
//  Created by Даниил Апальков on 30.12.2020.
//

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
