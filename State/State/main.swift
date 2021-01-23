import Foundation

/*
 Необходимо реализовать движение электронного Заказа. Заказ может находиться в пяти состояниях:
* Собирается, Подтверждён, Оплачен, Исполнен, Отменён.При создании заказ находится в состоянии Собирается.
* Из него он может попасть в состояние Подтверждён, когда пользователь подтвердит заказ, или в состояние Отменён, если отменит.
* Из состояния Подтверждён заказ может вернуться обратно в состояние Собирается, а также может перейти в состояния Отменён или Оплачен.
* Из состояния Оплачен заказ может попасть только в состояния Отменён или Исполнен. Из состояния Исполнен и состояния
* Отменён заказ уже не может перейти ни в какое другое состояние.
Требования к реализации: использовать объектно-ориентированный подход, также должна быть предусмотрена возможность
узнать текущее состояние заказа в человекочитаемом виде.
 */

class Order {
    var state: State?
    
    init() {
        defer {
            self.state = Assembling(context: self)
        }
    }
    
    func accept( _ accepted: Bool) {
        self.state?.accept(accepted)
    }
    
    func undo() {
        self.state?.undo()
    }
    
    func changeState(state: State) {
        self.state = state
    }
}

protocol State {
    var context: Order {get set}
    
    func accept( _ accepted: Bool)
    func undo()
}

class Assembling: State {
    var context: Order
    
    init(context: Order) {
        self.context = context
    }
    
    func accept(_ accepted: Bool) {
        if accepted {
            self.context.changeState(state: Accepted(context: self.context))
            print("Заказ Подтвержден")
        } else {
            self.undo()
        }
    }
    func undo() {
        self.context.changeState(state: Canceled(context: self.context))
        print("Заказ Отменен")
    }
}

class Accepted: State {
    var context: Order
    
    init(context: Order) {
        self.context = context
    }
    
    func accept(_ accepted: Bool) {
        if accepted {
            self.context.changeState(state: Payed(context: self.context))
            print("Заказ Оплачен")
        } else {
            self.context.changeState(state: Canceled(context: self.context))
            print("Заказ Отменен")
        }
    }
    
    func undo() {
        self.context.changeState(state: Assembling(context: self.context))
        print("Заказ Собирается")
    }
}

class Payed: State {
    
    var context: Order
    
    init(context: Order) {
        self.context = context
    }
    func accept(_ accepted: Bool) {
        if accepted {
            self.context.changeState(state: Done(context: self.context))
            print("Заказ Исполнен")
        } else {
            self.context.changeState(state: Canceled(context: self.context))
            print("Заказ Отменен")
        }
    }
    
    func undo() {}
}

class Canceled: State {
    var context: Order
    
    init(context: Order) {
        self.context = context
    }
    
    func accept(_ accepted: Bool) {
        print("Из состояния Отменен никуда не перейти")
    }
    
    func undo() {
        print("Из состояния Отменен никуда не перейти")
    }
}

class Done: State {
    var context: Order
    
    init(context: Order) {
        self.context = context
    }
    
    func accept(_ accepted: Bool) {
        print("Из состояния Исполнен никуда не перейти")
    }
    
    func undo() {
        print("Из состояния Исполнен никуда не перейти")
    }
}

var order = Order()

order.accept(true)
order.accept(true)
order.accept(false)
order.accept(true)
