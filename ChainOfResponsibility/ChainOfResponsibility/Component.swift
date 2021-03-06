import Foundation

/*
 Класс компонента, который может иметь ссылку на следующий компонент в цепи
 обработки. Каждый компонент цепи исполняет свои операции с запросом, способен
 решить стоит ли передавать запрос далее по цепочке либо обработать его самостоятельно.
 Может быть использован и как цепь отдельных операций, которые прерывают обработку
 если один из них не может обработать запрос. Например, фетчинг картинки из гугла
 требует предварительной обработки ссылки, запроса к серверу, обработки пришедших
 данных и их представление. За каждое из таких действий может отвечать свой компонент
 цепи, и, если один из них не справится, повалятся и остальные.
 */

class Component {
    
    // ссылка на следующий компонент в цепочке
    var next: Component?
    
    /*
     @discardableResult разрешает провалить возвращаемое значение в пустоту
     не требуя положить его в какую-то переменную.
     Возвращает входящий компонент, из-за чего можно строить удобную
     цепочку вызовов.
     */
    @discardableResult
    func setNext(component: Component) -> Component {
        self.next = component
        return component
    }
    
    func handle(request: String) -> String? {
        return self.next?.handle(request: request)
    }
}
