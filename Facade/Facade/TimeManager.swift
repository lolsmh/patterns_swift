import Foundation

/*
 Фасад, который скрывает работу с множеством классов
 обработки временных отрезков
 */

class TimeManager {
    
    // Производит обработку несколькими классами запроса
    // получения нынешней даты. Скрывает от пользователя
    // реализацию, требуя от него лишь формат вывода
    // даты
    static func getCurrentDate(in format: String) -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "\(format)"
        let formattedDate = formatter.string(from: date)
        return formattedDate
    }
    
    // Производит рассчет дней между двумя датами
    static func daysBetween(startDate: String, endDate: String, in format: String) throws -> Int? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        let formattedStartDate = dateFormatter.date(from: startDate)
        let formattedEndDate = dateFormatter.date(from: endDate)

        let components = Set<Calendar.Component>([.day])
        if let start = formattedStartDate, let end = formattedEndDate {
            let differenceOfDate = Calendar.current.dateComponents(components, from: start, to: end)
            return differenceOfDate.day
        } else {
            throw TimeManagerExceptions.DateCannotBeFormattedProperly()
        }
    }
    
    // Производит рассчет прошедших лет с указанного года
    static func getPassedYears(since year: Int) throws -> Int? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let endDate = getCurrentDate(in: "yyyy")

        let formattedStartDate = dateFormatter.date(from: "\(year)")
        let formattedEndDate = dateFormatter.date(from: "\(endDate)")

        let components = Set<Calendar.Component>([.year])
        
        if let start = formattedStartDate, let end = formattedEndDate {
            let differenceOfDate = Calendar.current.dateComponents(components, from: start, to: end)
            return differenceOfDate.year
        } else {
            throw TimeManagerExceptions.DateCannotBeFormattedProperly()
        }
    }
}
