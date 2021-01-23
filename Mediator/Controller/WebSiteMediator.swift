import Foundation

class WebSiteController: Controller {
    var specifyCheckBox: SpecifyEmailCheckBox
    var emailTextField: EmailTextField
    var userTextField: UserTextField
    var signIn: Button
    var home: MainPage
    
    init(specifyCheckBox: SpecifyEmailCheckBox, emailTextField: EmailTextField, userTextField: UserTextField, signIn: Button, home: MainPage) {
        self.specifyCheckBox = specifyCheckBox
        self.emailTextField = emailTextField
        self.signIn = signIn
        self.home = home
        self.userTextField = userTextField
        
        self.specifyCheckBox.dialog = self
        self.emailTextField.dialog = self
        self.userTextField.dialog = self
        self.signIn.dialog = self
        self.home.dialog = self
    }
    
    
    func notify(sender: Component, event: String) {
        if (sender is SpecifyEmailCheckBox) && event == "CheckBoxChanged to \(true)" {
            print("Write your email")
            self.emailTextField.text = readLine()!
        }
        if sender is SignInButton {
            print(event)
            if self.specifyCheckBox.isChecked {
                if self.emailTextField.text == "user@mail.com" {
                    self.home.printLayout(for: "user@mail.com")
                } else {
                    print("email is not in the base")
                }
            } else {
                print("Write your username")
                self.userTextField.text = readLine()!
                if self.userTextField.text == "user" {
                    self.home.printLayout(for: "user")
                } else {
                    print("user is not in the base")
                }
            }
        }
        if sender is MainPage {
            print(event)
        }
    }
}
