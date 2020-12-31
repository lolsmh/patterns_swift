import Foundation

/*
 В зависимости от реализации и поставленной задачи билдер можно привязать к generic
 типу, так как возвращаемые сущности иногда должны иметь конкретику. Например,
 IRobotBuilder вернет как результат сборки IRobot, что не всегда хорошо, поэтому иногда
 имеет смысл сделать его зависимым от типа робота T, указываемого при инициализации
 (ConcreteRobotBuilder<T>).
 */

protocol IRobotBuilder {
    
    // Этапы строительства удобнее вызывать в виде цепочки запросов
    // Поэтому возвращается свой же тип данных
    func addLazer() -> Self
    func addNightVision() -> Self
    func addHugeGun() -> Self
    func addJetpack() -> Self
    func buildRobot() -> IRobot
    func reset() -> Self
}
