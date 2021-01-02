import Foundation

// Использование билдера ручками

var robotBuilder = ConcreteRobotBuilder()
var robot = robotBuilder
    .addHugeGun()
    .addJetpack()
    .addLazer()
    .addNightVision()
    .buildRobot()
print(robot) //console: This robot has Huge Gun, Jetpack, Lazer, Night Vision

var secondRobot = robotBuilder
    .addHugeGun()
    .addLazer()
    .reset()
    .addNightVision()
    .buildRobot()
print(secondRobot) //console: This robot has Night Vision

// Использование билдера через директора

var director = RobotDirector(builder: ConcreteRobotBuilder())
var flyingRobot = director.buildFlyingRobot()
var warRobot = director.buildWarRobot()
print("\(flyingRobot)\n\(warRobot)")
// console:
// This robot has Jetpack
// This robot has Huge Gun, Lazer
