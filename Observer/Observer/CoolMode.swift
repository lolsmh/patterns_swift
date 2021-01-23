import Foundation

class CoolMode: Observer {
    var isToggled: Bool = false {
        didSet {
            for sub in subscribers {
                sub.update(context: self)
            }
        }
    }
    
    var subscribers: [Subscriber] = []
    
    func subscribe(subscriber: Subscriber) {
        subscribers.append(subscriber)
    }
}
