import Foundation

var instance1 = Singleton.instance
var instance2 = Singleton.instance

print(instance1 === instance2)
