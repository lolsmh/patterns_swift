import Foundation

var edvard = EvilCookie(name: "Edvard")
var michael = EvilCookie(name: "Michael")
var edvard2_0 = edvard.clone()

edvard.doEvilThings() //console: Evil Cookie Edvard did something evil
michael.doEvilThings() //console: Evil Cookie Michael did something evil
edvard2_0.doEvilThings() //console: Evil Cookie Edvard did something evil

print(edvard === edvard2_0) //console: false
