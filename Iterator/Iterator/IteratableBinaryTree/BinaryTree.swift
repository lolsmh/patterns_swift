import Foundation

class BinaryTree<T: Comparable>: Sequence {
    private var head: Node<T>?
    var iter: BinaryTreeIterator<T>?
    
    func Add(_ value: T) {
        if self.head == nil {
            self.head = Node<T>(value)
            iter = BinaryTreeIterator<T>(head: head)
        } else {
            self.AddTo(node: self.head!, value: value)
        }
    }
    
    private func AddTo(node: Node<T>, value: T) {
        
        if value < node.value {
            if node.left == nil {
                
                node.left = Node<T>(value, node)
            } else {
                AddTo(node: node.left!, value: value)
            }
        }
        else {
            if node.right == nil {
                node.right = Node<T>(value, node)
            }
            else {
                AddTo(node: node.right!, value: value)
            }
        }
    }
    func makeIterator() -> some IteratorProtocol { self.iter! }
}
