import Foundation

class Window: Subscriber {
    func update(context: CoolMode) {
        if context.isToggled {
            print("Полный экран")
        } else {
            print("Оконный режим")
        }
    }
}
