//
//  FairyDustFactory.swift
//  Creational
//
//  Created by Даниил Апальков on 30.12.2020.
//

import Foundation

class FairyDustFactory: IFactory {
    func createProduct() -> IProduct {
        return FairyDust()
    }
}
