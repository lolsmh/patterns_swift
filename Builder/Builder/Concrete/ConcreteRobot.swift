import Foundation

class ConcreteRobot: IRobot {
    var description: String = "This robot has "
    
    // Переменная isFirst нужна чисто в косметических целях
    // ради читабельного отображения в консоли запятых
    private var isFirst = true
    
    func addModule(_ module: String) {
        if isFirst {
            self.description += module
            self.isFirst.toggle()
        } else {
            self.description += ", " + module
        }
    }
}
