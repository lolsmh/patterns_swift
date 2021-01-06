import Foundation

// Добавляет спрайт в игру.
// Принимает фабрику легковесов для вычисления контекста,
// так же принимает текстуру и звук спрайта как
// повторяющиеся состояния, а положение и модель
// как уникальные.

func addSprite (
    factory: FlyweightFactory,
    texture: String,
    sound: String,
    rotation: String,
    model: String) {

    // получает соответствующий легковес для повторяющихся состояний
    // если такого не было, он создаст и вернет новый
    let flyweight = factory.flyweight(for: [texture, sound])

    // Для операции над объектом необходимо передать
    // уникальные состояния
    flyweight.operation(uniqueState: [rotation, model])
}


let spriteFactory = FlyweightFactory(states:
[
    ["Осколок", "Треск"],
    ["Взрыв", "Бум"],
    ["Снег", "Хруст"],
])

spriteFactory.printFlyweights()
/*
 console:
     Найдено 3 легковеса:
     ВзрывБум
     СнегХруст
     ОсколокТреск
 */

addSprite(
    factory: spriteFactory,
    texture: "Осколок",
    sound: "Треск",
    rotation: "90 градусов",
    model: "Острый осколок"
    )
/*
 console:
    Найден легковес по ключу ОсколокТреск, переиспользуем
    Легковес оперирует общими (["Осколок", "Треск"]),
    и уникальными (["90 градусов", "Острый осколок"]
 */

addSprite(
    factory: spriteFactory,
    texture: "Осколок",
    sound: "Треск",
    rotation: "90 градусов",
    model: "Огромный осколок"
    )
/*
 console:
    Найден легковес по ключу ОсколокТреск, переиспользуем
    Легковес оперирует общими (["Осколок", "Треск"]),
    и уникальными (["90 градусов", "Огромный осколок"]
 */

spriteFactory.printFlyweights()
/*
 console:
     Найдено 3 легковеса:
     ВзрывБум
     СнегХруст
     ОсколокТреск
 */

addSprite(
    factory: spriteFactory,
    texture: "Лед",
    sound: "Треск",
    rotation: "0 градусов",
    model: "Прозрачный"
    )
/*
 console:
    Легковеса по ключу ЛедТреск не существует, создан новый
    Легковес оперирует общими (["Лед", "Треск"]),
    и уникальными (["0 градусов", "Прозрачный"]
 */

addSprite(
    factory: spriteFactory,
    texture: "Лед",
    sound: "Треск",
    rotation: "90 градусов",
    model: "Мутный"
    )
/*
 console:
    Найден легковес по ключу ЛедТреск, переиспользуем
    Легковес оперирует общими (["Лед", "Треск"]),
    и уникальными (["90 градусов", "Мутный"]
 */

spriteFactory.printFlyweights()

/*
 console:
     Найдено 4 легковеса:
     ЛедТреск
     ОсколокТреск
     ВзрывБум
     СнегХруст
 */


