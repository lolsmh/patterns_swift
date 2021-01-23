import Foundation

class Node<T: Comparable>: Comparable, CustomStringConvertible {
    var description: String {
        "\(self.value)"
    }
    var value: T
    var left: Node?
    var right: Node?
    var root: Node?
    
    init(_ value: T, _ root: Node<T>? = nil, _ left: Node? = nil, _ right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
        self.root = root
    }
    
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        lhs.value == rhs.value
    }
    
    static func < (lhs: Node<T>, rhs: Node<T>) -> Bool {
        lhs.value < rhs.value
    }
}
