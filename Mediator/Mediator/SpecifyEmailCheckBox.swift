import Foundation

class SpecifyEmailCheckBox: CheckBox {
    var isChecked: Bool = false {
        didSet {
            dialog?.notify(sender: self, event: "CheckBoxChanged to \(isChecked)")
        }
    }
    
    var dialog: Controller?
}
