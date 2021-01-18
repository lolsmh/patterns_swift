import Foundation

class Dog: Component {
    override func handle(request: String) -> String? {
        if request == "косточка" {
            return "Собака смотрит на косточку круглыми глазами"
        } else {
            return next?.handle(request: request)
        }
    }
}
