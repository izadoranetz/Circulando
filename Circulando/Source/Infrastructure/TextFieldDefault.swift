import Foundation
import UIKit

class TextFieldDefault: UITextField {

    //construtor para placeholder
    init(placeholder: String){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: .default, returnKeyType: .default)
    }

    //construtor para escrever e ter teclado
    init(placeholder: String, keyBoardType: UIKeyBoardType, returnKeyType){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: keyBoardType, returnKeyType: returnKeyType)
    }

    private func initDefault (placeholder: String, keyBoardType: UIKeyBoardType, returnKeyType: UIReturnKeyType){
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyBoardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}