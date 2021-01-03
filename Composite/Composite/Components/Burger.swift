import Foundation

class Burger: Food {
    private var _cost: Double
    
    override var cost: Double {
        get {_cost}
        set {_cost = newValue}
    }
    
    init(cost: Double) {
        self._cost = cost
    }
    
    override func getCost() -> Double {
        print("Я вкуснющий американский бутер --- \(cost)")
        return cost
    }
}
