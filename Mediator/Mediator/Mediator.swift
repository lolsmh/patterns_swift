import Foundation

protocol Controller {
    func notify(sender: Component, event: String)
}
