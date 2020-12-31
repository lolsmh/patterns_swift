import Foundation

/*
 Билдер может быть использован в паре с директором, который может содержать в себе
 какую-то логику обработки запросов, заранее подготовленные шаблоны постройки продукта.
 Упрощает конечное взаимодействие пользователя с интерфейсом.
 */

class RobotDirector {
    private var builder: IRobotBuilder
    
    init(builder: IRobotBuilder) {
        self.builder = builder
    }
    
    func buildFlyingRobot() -> IRobot {
        builder
            .addJetpack()
            .buildRobot()
    }
    
    func buildWarRobot() -> IRobot {
        builder
            .addHugeGun()
            .addLazer()
            .buildRobot()
    }
}
