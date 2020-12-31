import Foundation

class MagicPotionFactory: IFactory {
    func createProduct() -> IProduct {
        return MagicPotion()
    }
}
