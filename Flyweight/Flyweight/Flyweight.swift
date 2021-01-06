import Foundation

class Flyweight {

    // общее повторяющееся состояние
    private let sharedState: [String]

    init(sharedState: [String]) {
        self.sharedState = sharedState
    }

    // операция с уникальными и общими состояниями
    func operation(uniqueState: [String]) {
        // любая логика обработки объекта
        print("Легковес оперирует общими (\(sharedState)), и уникальными (\(uniqueState)")
    }
}
