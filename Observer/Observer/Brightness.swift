import Foundation

class Brightness: Subscriber {
    private var brightness: Double = 20
    
    func update(context: CoolMode) {
        if context.isToggled {
            self.brightness = 100
            print("Яркость установлена на \(brightness)")
        } else {
            self.brightness = 20
            print("Яркость установлена на \(brightness)")
        }
    }
}
