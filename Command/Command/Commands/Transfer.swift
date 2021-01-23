import Foundation

class Transfer : AccountCommand {
    var toAccount: IAccount?
    
    init(from: IAccount, to: IAccount, amount: Double) {
        super.init(account: from, amount: amount)
        self.toAccount = to
    }
    
    override func execute() {
        Withdraw(account: account, amount: amount).execute()
        Income(account: toAccount!, amount: amount).execute()
    }
    override func undo() {
        Income(account: account, amount: amount).execute()
        Withdraw(account: toAccount!, amount: amount).execute()
    }
}
