import Foundation

class GeekMagazineDatabase: Database {
    var data: [String : String] = [:]
    
    func getData(for key: String) -> String? {
        return self.data[key]
    }
    
    func setData(_ data: String, for key: String) throws {
        if let _ = self.data[key] {
            throw DatabaseExceptions.DataIsAllreadyBeingSetForKey
        } else {
            self.data[key] = data
        }
    }
}

enum DatabaseExceptions: Error {
    case DataIsAllreadyBeingSetForKey
}
