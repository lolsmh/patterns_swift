import Foundation

class BinaryTreeIterator<T: Comparable>: IteratorProtocol {
    private var firstElement: Node<T>?  {
        self.getLowestLeft(of: head)
    }
    private var nextElement: Node<T>?
    private var lastElement: Node<T>?  {
        self.getLowestRight(of: head)
    }
    private var canGoLeft: Bool = true
    private var canGoRight: Bool = true
    private var isFirst: Bool = true
    private var head: Node<T>?
    
    init(head: Node<T>?) {
        self.head = head
    }
    
    func next() -> Node<T>? {
        if isFirst {
            self.nextElement = firstElement
            isFirst.toggle()
        }
        defer {
            if nextElement != nil {
                if self.nextElement?.left == nil || !canGoLeft {
                    if self.nextElement?.right == nil || !canGoRight {
                        let previousElement = nextElement
                        self.nextElement = self.nextElement?.root
                        if nextElement?.left == previousElement {
                            canGoLeft = false
                        } else {
                            canGoRight = false
                        }
                        if !canGoLeft && !canGoRight {
                            nextElement = self.head
                            self.canGoRight = true
                            if previousElement == lastElement {
                                nextElement = nil
                            }
                        }
                    }
                    else {
                        if nextElement?.right?.left != nil { canGoLeft = true }
                        self.nextElement = self.getLowestLeft(of: self.nextElement?.right)
                    }
                } else {
                    if canGoLeft {
                        self.nextElement = self.getLowestLeft(of: self.nextElement)
                    }
                }
            } else {
                nextElement = firstElement
            }
        }
        if nextElement == nil {
            isFirst.toggle()
        }
        return nextElement
    }
    
    private func getLowestLeft(of node: Node<T>?) -> Node<T>? {
        if node?.left != nil {
            return getLowestLeft(of: node?.left)
        } else {
            return node
        }
    }
    
    private func getLowestRight(of node: Node<T>?) -> Node<T>? {
        if node?.right != nil {
            return getLowestRight(of: node?.right)
        } else {
            return node
        }
    }
}
