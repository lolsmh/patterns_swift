import Foundation

class MainPage: View {
    func printLayout(for user: String) {
        dialog?.notify(sender: self, event: "Printing layout for \(user)")
    }
    
    var dialog: Controller?
}
