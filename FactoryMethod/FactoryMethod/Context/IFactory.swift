//
//  IFactory.swift
//  Creational
//
//  Created by Даниил Апальков on 30.12.2020.
//

import Foundation

protocol IFactory {
    //Фабричный метод
    func createProduct() -> IProduct
    //Логика обработки продуктов
    func productOperation()
}

extension IFactory {
    //Может иметь изначальную реализацию
    //Можно переопределить
    func productOperation() {
        let product = createProduct()
        print("Worked with \(product)")
    }
}
