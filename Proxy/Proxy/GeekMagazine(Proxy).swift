import Foundation

/*
 Класс заместителя, который реализует тот же интерфейс, что и база данных,
 но имеет дополнительную логику допуска к функциям БД через авторизацию
 и осущестляет ленивую инициализацию БД
 */

class GeekMagazine: Database {
    
    private var database: GeekMagazineDatabase
    private var login: String
    private var password: String
    
    init(login: String, password: String) {
        self.database = GeekMagazineDatabase()
        self.login = login
        self.password = password
    }
    
    func getData(for key: String) -> String? {
        if checkAccess() {
            return database.getData(for: key)
        } else {
            return nil
        }
    }
    
    func setData(_ data: String, for key: String) throws {
        if checkAccess() {
            do {
                return try database.setData(data, for: key)
            } catch {
                throw DatabaseExceptions.DataIsAllreadyBeingSetForKey
            }
        } else {
            throw AccessError.AccessDenied
        }
    }
    
    private func checkAccess() -> Bool {
        return self.login == "root" && self.password == "rootroot" ? true : false
    }
}

enum AccessError: Error {
    case AccessDenied
}
