import Foundation

// Использование билдера ручками

var robotBuilder = ConcreteRobotBuilder()
var robot = robotBuilder
    .addHugeGun()
    .addJetpack()
    .addLazer()
    .addNightVision()
    .buildRobot()
print(robot)

var secondRobot = robotBuilder
    .addHugeGun()
    .addLazer()
    .reset()
    .addNightVision()
    .buildRobot()
print(secondRobot)

// Использование билдера через директора

var director = RobotDirector(builder: ConcreteRobotBuilder())
var flyingRobot = director.buildFlyingRobot()
var warRobot = director.buildWarRobot()
print("\(flyingRobot)\n\(warRobot)")
