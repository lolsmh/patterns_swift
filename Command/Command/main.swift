import Foundation

var myAccount = Account()
var myGirlAccount = Account()

myAccount.income(amount: 25000)
myAccount.transfer(to: myGirlAccount, amount: 24999)

print(myAccount, myGirlAccount)
// console: 1.0 24999.0

myAccount.undo()

print(myAccount, myGirlAccount)
// console: 25000.0 0.0
