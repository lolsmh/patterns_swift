import Foundation

var specifyCheckBox = SpecifyEmailCheckBox()
var signInButton = SignInButton()
var emailTextField = EmailTextField()
var userTextField = UserTextField()
var home = MainPage()

var controller = WebSiteController(
    specifyCheckBox: specifyCheckBox,
    emailTextField: emailTextField,
    userTextField: userTextField,
    signIn: signInButton,
    home: home
)

specifyCheckBox.isChecked = true
signInButton.press()

