import Foundation

class FairyDustFactory: IFactory {
    func createProduct() -> IProduct {
        return FairyDust()
    }
}
