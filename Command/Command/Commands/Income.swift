import Foundation

class Income : AccountCommand {
    override func execute() {
        self.account.amount += self.amount
    }
    override func undo() {
        Withdraw(account: account, amount: amount).execute()
    }
}
