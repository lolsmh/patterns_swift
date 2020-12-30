//
//  MagicPotionFactory.swift
//  Creational
//
//  Created by Даниил Апальков on 30.12.2020.
//

import Foundation

class MagicPotionFactory: IFactory {
    func createProduct() -> IProduct {
        return MagicPotion()
    }
}
