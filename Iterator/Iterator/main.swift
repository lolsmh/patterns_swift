import Foundation

// общий пример
let words = WordsCollection()
words.append("First")
words.append("Second")
words.append("Third")

for i in words {
    print(i)
}
/*
 console:
    First
    Second
    Third
 */

let numbers = NumbersCollection()
numbers.append(1)
numbers.append(2)
numbers.append(3)

/*
 concole:
    3
    2
    1
 */

for i in numbers {
    print(i)
}

// Пример с двоичным деревом
var tree = BinaryTree<Int>()
tree.Add(6)
tree.Add(2)
tree.Add(1)
tree.Add(4)
tree.Add(3)
tree.Add(5)
tree.Add(8)
tree.Add(7)
tree.Add(9)
tree.Add(10)
tree.Add(-1)

for i in tree {
    print(i, terminator: " ")
    /*
     console: -1 1 2 3 4 5 6 7 8 9 10
     */
}
print("")

tree.Add(20)
tree.Add(21)
tree.Add(-5)

for i in tree {
    print(i, terminator: " ")
    /*
     console: -5 -1 1 2 3 4 5 6 7 8 9 10 20 21
     */
}
print("")
