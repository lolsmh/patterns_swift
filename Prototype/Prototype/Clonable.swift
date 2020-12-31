import Foundation

/*
 Протокол, который добавляет дополнительный конструктор, клонирующий все необходимые поля
 в новый объект и реализует нужную логику. Можно делать его публичным, так как может быть
 полезен сам по себе. Метод clone возвращает полную копию объекта. Self используется
 для унификации протокола. Если же копируемых классов в проекте не много, возможна
 реализация этих методов непосредственно внутри класса.
 */

protocol Clonable {
    init(from element: Self)
    func clone() -> Self
}
