import Foundation

class ConcreteRobotBuilder: IRobotBuilder {
    // Пустой в начале робот
    private var robot: IRobot = ConcreteRobot()
    
    func reset() -> Self {
        self.robot = ConcreteRobot()
        return self
    }
    
    func addLazer() -> Self {
        self.robot.addModule("Lazer")
        return self
    }
    
    func addNightVision() -> Self {
        self.robot.addModule("Night Vision")
        return self
    }
    
    func addHugeGun() -> Self {
        self.robot.addModule("Huge Gun")
        return self
    }
    
    func addJetpack() -> Self {
        self.robot.addModule("Jetpack")
        return self
    }
    
    func buildRobot() -> IRobot {
        // Тот код, который находится в defer, выполнется после return
        // Т. е. сначала отдадим робота наружу, потом сделаем reset().
        defer { let _ = self.reset() }
        return self.robot
    }
}
