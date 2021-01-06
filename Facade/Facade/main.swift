import Foundation

let dateFormat = "dd.mm.yyyy" // желаемый формат. Может быть как угодно переопределен
let endOfTheYear = "31.12.2021"
let currentDate = TimeManager.getCurrentDate(in: dateFormat) // дата написания: 05.01.2021

let daysUntillTheEndOfTheYear = try? TimeManager.daysBetween(
    startDate: currentDate,
    endDate: endOfTheYear,
    in: dateFormat
)

print(daysUntillTheEndOfTheYear!) //console: 360

let passedYearsSince1990 = try? TimeManager.getPassedYears(since: 1990)

print(passedYearsSince1990!) //console: 31
