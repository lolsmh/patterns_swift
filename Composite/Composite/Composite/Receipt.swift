import Foundation

/*
 Класс компоновщика, который сам может являться элементом компановки.
 Например, компановщик - коробка, в которую можно запихнуть элементы.
 Тогда в коробку можно засунуть другие коробки, которые могут содержать
 другие коробки и тд. Смысл паттерна - иерархия продуктов. Так, можно
 по цепочке вызывать у компонентов композита метод draw(). По поведению
 похож на рекурсию
 */

class Receipt: Food {
    private var _cost: Double = 0
    
    override var cost: Double {
        get {_cost}
        set {_cost = newValue}
    }
    
    // массив компонентов внутри композита
    private var components = [Food]()
    
    // методы добавления/удаления композита
    // кстати, сюда бы неплохо зашел строитель
    // с цепочкой добавления и удаления продуктов в чек
    func addComponent(_ component: Food) {
        components.append(component)
    }
    func removeComponent(_ component: Food) {
        if let index = components.firstIndex(of: component) {
            components.remove(at: index)
        }
    }
    
    // метод вывода дернет соответствующий метод у всех внутри себя
    override func getCost() -> Double {
        for i in components {
            if let cost = try? i.getCost() {
                self.cost += cost
            }
        }
        return cost
    }
}
