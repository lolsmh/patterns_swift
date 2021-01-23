import Foundation

class NumbersCollection {

    fileprivate lazy var items = [Int]()

    func append(_ item: Int) {
        self.items.append(item)
    }
}

extension NumbersCollection: Sequence {

    func makeIterator() -> AnyIterator<Int> {
        var index = self.items.count - 1

        return AnyIterator {
            defer { index -= 1 }
            return index >= 0 ? self.items[index] : nil
        }
    }
}
