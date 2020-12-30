//
//  IBand.swift
//  AbstractFactory
//
//  Created by Даниил Апальков on 30.12.2020.
//

import Foundation

/*
 Интерфейс абстрактной фабрики задает набор методов, возвращающих связанные между собой
 единой концепцией абстракции продуктов, иначе "семейство". Продукты одного семейства
 могут взаимодействовать между собой, но не с продуктами другого семейства
 */

protocol IBand {
    func getVocalist() -> IVocalist
    func getProducer() -> IProducer
    func getManager() -> IManager
}
