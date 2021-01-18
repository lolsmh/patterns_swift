import Foundation

class Bird: Component {
    override func handle(request: String) -> String? {
        if request == "семечки" {
            return "Птица матерится за семечки"
        } else {
            return next?.handle(request: request)
        }
    }
}
