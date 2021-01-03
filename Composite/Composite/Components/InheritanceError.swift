import Foundation

enum InheritanceError: Error {
    case NotImplemented(message: String = "Метод прорисовки не перегружен в дочерних классах")
}
