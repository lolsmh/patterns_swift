import Foundation

class Door: Subscriber {
    func update(context: CoolMode) {
        if context.isToggled {
            print("Дверь закрыта")
        } else {
            print("Дверь открыта")
        }
    }
}
