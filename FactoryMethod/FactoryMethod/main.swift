import Foundation

var fairyDustFactory = FairyDustFactory()
fairyDustFactory.productOperation() //console: Worked with FairyDust

var fairyDust = fairyDustFactory.createProduct()
fairyDust.someOperationWithProduct() //console: Whoosh, magic is everywhere

var magicPotionFactory = MagicPotionFactory()
magicPotionFactory.productOperation() //console: Worked with MagicPotion


var magicPotion = magicPotionFactory.createProduct()
magicPotion.someOperationWithProduct() //console: Yikes, you've turned into a frog
