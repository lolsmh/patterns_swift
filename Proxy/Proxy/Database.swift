import Foundation

protocol Database {
    func getData(for key: String) -> String?
    func setData(_ data: String, for key: String) throws
}


