import Foundation

class SignInButton: Button {
    func press() {
        dialog?.notify(sender: self, event: "Signing In")
    }
    
    var dialog: Controller?
}
