//
//  IAccount.swift
//  Command
//
//  Created by Даниил Апальков on 15.01.2021.
//

import Foundation

class IAccount: CustomStringConvertible {
    var description: String {
        "\(amount)"
    }
    var amount: Double = 0
    var commands: [AccountCommand] = []
    
    func withdraw(amount: Double){
        let command = Withdraw(account: self, amount: amount)
        command.execute()
        self.commands.append(command)
    }
    
    func income(amount: Double) {
        let command = Income(account: self, amount: amount)
        command.execute()
        self.commands.append(command)
    }
    func transfer(to: IAccount, amount: Double) {
        let command = Transfer(from: self, to: to, amount: amount)
        command.execute()
        self.commands.append(command)
    }
    
    func undo() {
        try? self.commands.last?.undo()
        self.commands.removeLast()
    }
}

