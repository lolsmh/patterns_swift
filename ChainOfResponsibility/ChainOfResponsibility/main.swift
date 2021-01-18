import Foundation

let food = [
    "семечки",
    "косточка",
    "банан",
    "молоко",
    "латте с соленой карамелью",
]

var monkey = Monkey()
var dog = Dog()
var bird = Bird()

monkey
    .setNext(component: dog)
    .setNext(component: bird)


for i in food {
    
    //guard позволяет получить результат если он не nil
    //и воспользоваться конструкцией else если nil
    guard let result = monkey.handle(request: i) else {
        print("\(i) никто не захотел🤔")
        continue
    }
    print(result)
}

/*
 console:
     Птица матерится за семечки
     Собака смотрит на косточку круглыми глазами
     Макака увидела банан, сидит радуется

     молоко никто не захотел🤔
     латте с соленой карамелью никто не захотел🤔
 */
