import Foundation

// расширение на массив строк, которое добавит переменную key
// которая будет возвращать массив соединенный в единую строку
// было ["Осколок", "Треск"], при обращении к key станет "ОсколокТреск"
extension Array where Element == String {
    var key: String {
        return self.joined()
    }
}

class FlyweightFactory {

    // кеш, который хранит в себе легковесов по ключу.
    // например, если создать спрайт с текстурой осколка и звуком треска,
    // то в дальнейшем создастся легковес по ключу этого спрайта
    // (в моем случае просто ОсколокТреск), и далее можно
    // создавать кучу осколков со звуком треска, но разного положения
    // в пространстве и модели внешнего представления
    // (Огромный осколок, острый осколок)
    // Таким образом в оперативке не придется хранить 1000 одинаковых
    // текстур осколка и звуков треска, т.к. они будут вычисляться
    // из соответствующего легковеса, оставив в ней только уникальные
    // состояния
    
    private var flyweights: [String: Flyweight]

    init(states: [[String]]) {
        // принимает при инициализации массив общих состояний
        // заполняет его легковесами с контекстом этих состояний
        var flyweights = [String: Flyweight]()
        for state in states {
            flyweights[state.key] = Flyweight(sharedState: state)
        }

        self.flyweights = flyweights
    }

    // получает состветствующий легковес для повторяющегося состояния
    func flyweight(for state: [String]) -> Flyweight {
        
        let key = state.key

        // если легковеса для данных состояний не существует
        // создается новый и возвращается
        guard let foundFlyweight = flyweights[key] else {
            print("Легковеса по ключу \(key) не существует, создан новый")
            let flyweight = Flyweight(sharedState: state)
            flyweights.updateValue(flyweight, forKey: key)
            return flyweight
        }
        // иначе возвращает найденый
        print("Найден легковес по ключу \(key), переиспользуем")
        return foundFlyweight
    }

    func printFlyweights() {
        print("Найдено \(flyweights.count) легковеса:")
        for item in flyweights {
            print(item.key)
        }
        print("")
    }
}
