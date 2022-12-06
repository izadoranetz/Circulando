import Foundation
import UIKit

class TextFieldDefault: UITextField {

    init(text:String){
        super.init(frame: .zero)
        initDefault(text: text)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initDefault (text: String){
        //self.textField = text.UITextField ()
        self.backgroundColor = .textFieldBackGroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }

}