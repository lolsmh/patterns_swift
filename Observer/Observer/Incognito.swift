import Foundation

class Incognito: Subscriber {
    func update(context: CoolMode) {
        if context.isToggled {
            print("Режим инкогнито включен")
        } else {
            print("Режим инкогнито выключен")
        }
    }
}
