import Foundation

// класс с массивом слов

class WordsCollection {

    var items = [String]()

    func append(_ item: String) {
        self.items.append(item)
    }
}

// в swift чтобы пользоваться конструкцией for i in class
// необходимо, чтобы этот класс наследовался от Sequence,
// который имеет единственный метод, создающий итератор

extension WordsCollection: Sequence {
    func makeIterator() -> WordsIterator {
        return WordsIterator(self)
    }
}
