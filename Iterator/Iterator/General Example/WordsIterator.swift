import Foundation

/*
 
 Класс итератора, который наследуется от IteratorProtocol,
 так как этого типа требует Sequence. В документации протокол
 выглядит приблизительно так:
 
 protocol IteratorProtocol {
    typedef Element = Self
    func next() -> Element?
 }
 
 Он имеет единственную функцию next(), которая вызывается
 языком во время работы for in. Возвращается значение, которое
 может быть нулем, если оно таковым окажется, то for прекращает
 работу
 
 */
class WordsIterator: IteratorProtocol {

    private let collection: WordsCollection
    private var index = 0

    init(_ collection: WordsCollection) {
        self.collection = collection
    }

    func next() -> String? {
        defer { index += 1 }
        return index < collection.items.count ? collection.items[index] : nil
    }
}


