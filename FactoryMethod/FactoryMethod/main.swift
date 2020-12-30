//
//  main.swift
//  FactoryMethod
//
//  Created by Даниил Апальков on 30.12.2020.
//

import Foundation

var fairyDustFactory = FairyDustFactory()
fairyDustFactory.productOperation()
var fairyDust = fairyDustFactory.createProduct()
fairyDust.someOperationWithProduct()

var magicPotionFactory = MagicPotionFactory()
magicPotionFactory.productOperation()
var magicPotion = magicPotionFactory.createProduct()
magicPotion.someOperationWithProduct()
