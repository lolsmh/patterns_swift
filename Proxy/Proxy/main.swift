import Foundation

var magazine = GeekMagazine(login: "root", password: "rootroot")
try? magazine.setData("Фигурка бандикута во весь рост", for: "main.figures.bandicoot.fullLength")

//console: Фигурка бандикута во весь рост
print(magazine.getData(for: "main.figures.bandicoot.fullLength")!)


magazine = GeekMagazine(login: "employee", password: "urmomgay")
do {
    try magazine.setData("Фигурка бандикута во весь рост", for: "main.figures.bandicoot.fullLength")
} catch {
    print("Ошибка доступа") //console: Ошибка доступа
}

