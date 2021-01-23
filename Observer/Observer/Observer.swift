//
//  Observer.swift
//  Observer
//
//  Created by Даниил Апальков on 23.01.2021.
//

import Foundation

protocol Observer {
    var subscribers: [Subscriber] {get set}
    
    func subscribe(subscriber: Subscriber)
}
