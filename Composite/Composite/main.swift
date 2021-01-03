import Foundation

var burger = Burger(cost: 100)
var burger1 = Burger(cost: 200)
var burger3 = Burger(cost: 150)

var fries = Fries(cost: 69)
var friesLarge = Fries(cost: 120)

var soda = Soda(cost: 60)
var sodaLarge = Soda(cost: 90)

var package = Receipt()
package.addComponent(burger)
package.addComponent(burger1)
package.addComponent(fries)
package.addComponent(sodaLarge)

var finalPackage = Receipt()
finalPackage.addComponent(package)
finalPackage.addComponent(burger3)
finalPackage.addComponent(friesLarge)
finalPackage.addComponent(soda)

print(finalPackage.getCost())
/*
 console:
 Я вкуснющий американский бутер --- 100.0
 Я вкуснющий американский бутер --- 200.0
 Я картошечка фри ♥️ --- 69.0
 Я сладкий газированный напиток --- 90.0
 Я вкуснющий американский бутер --- 150.0
 Я картошечка фри ♥️ --- 120.0
 Я сладкий газированный напиток --- 60.0
 789.0
 */
