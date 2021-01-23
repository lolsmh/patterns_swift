import Foundation

class SomeCaracter: CustomStringConvertible {
    internal var description: String {
        "Name: \(name), position: \(position), height: \(height), hp: \(hp)"
    }
    private var position: (Double, Double) = (0, 0)
    private var height: Double = 0
    private var hp: Double = 3
    private var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func move(to position: (Double, Double)) {
        self.position = position
    }
    
    func jump() {
        self.height = 5
    }
    
    func land() {
        self.height = 0
    }
    
    func getDamage() {
        self.hp -= 1
        if hp == 0 {
            print("\(name) умер")
        }
    }
    
    func save() -> CheckPoint {
        return CheckPoint(position: position, height: height, hp: hp)
    }
    
    func restore(from memento: CheckPoint) {
        self.height = memento.height
        self.hp = memento.hp
        self.position = memento.position
    }
    
    // Внутри класса находится вложенно его снимок.
    // Он может копировать только полезные/переменные поля.
    // Не содержит логической нагрузки методами и тд.
    // Все поля приватны на запись, поэтому извне изменить их
    // невохможно
    
    public class CheckPoint {
        private(set) var position: (Double, Double)
        private(set) var height: Double
        private(set) var hp: Double
        
        init(position: (Double, Double), height: Double, hp: Double) {
            self.position = position
            self.hp = hp
            self.height = height
        }
    }
}
