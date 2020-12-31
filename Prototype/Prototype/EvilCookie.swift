import Foundation

class EvilCookie: Clonable {
    private var name: String
    
    func doEvilThings() {
        print("Evil Cookie \(name) did something evil")
    }
    
    init(name: String) {
        self.name = name
    }
    // Инициализация из элемента своего класса
    required init(from element: EvilCookie) {
        self.name = element.name
    }
    /*
     Особенность свифта, как строго типизированного языка.
     Self по своему смыслу это EvilCookie, но по факту является отдельным типом данных.
     Поэтому каст EvilCookie as! Self все равно вернет EvilCookie, но его требует
     сам язык для удовлетворения требований протокола.
    */
    func clone() -> Self {
        return EvilCookie(from: self) as! Self
    }
}
