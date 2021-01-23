import Foundation

var goodboy = SomeCaracter("Данек")

var mementoArray = [SomeCaracter.CheckPoint]()

mementoArray.append(goodboy.save())

goodboy.move(to: (20, 20))
goodboy.jump()
goodboy.getDamage()

mementoArray.append(goodboy.save())

goodboy.move(to: (100, 100))
goodboy.land()
goodboy.getDamage()

mementoArray.append(goodboy.save())

goodboy.getDamage()
/*
 console:
    Данек умеp
 */

for i in mementoArray.reversed() {
    goodboy.restore(from: i)
    print(goodboy)
}
/*
 console:
    Name: Данек, position: (100.0, 100.0), height: 0.0, hp: 1.0
    Name: Данек, position: (20.0, 20.0), height: 5.0, hp: 2.0
    Name: Данек, position: (0.0, 0.0), height: 0.0, hp: 3.0
 */
