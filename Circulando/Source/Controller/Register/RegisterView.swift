import Foundation
import UIKit

class RegisterView: ViewDefault {
    
    //MARK: Closure
    var onLoginTap: (() ->Void)?

    //imagem
    var imageCadastrar = ImageDefault(image: "ImageCadastrar")

    //label imagem
    var imageLabel = LabelDefault(text: "Aumente o ciclo de vida de suas coisas", font: UIFont.systemFont(ofSize: 16, weight: .regular))

    //input e-mail
    var nomeTextField = TextFieldDefault(text: "Nome", keyBoardType: .emailAddress, returnKeyType: .next)

    //input e-mail
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyBoardType: .emailAddress, returnKeyType: .next)

    //input senha com máscara
    var senhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .done)

        text.isSecureTextEntry = true

        return text
    }()

    //botao entrar
    var buttonCadastrarEEntrar = ButtonDefault(placeholder: "Cadastrar e Entrar")

    //botao cadastrar
    var buttonCancelar = ButtonDefault(text: "Cancelar")


    override func setupVisualElements() {
        super.setupVisualElements()
        nomeTextField.delegate = self
        emailTextField.delegate = self
        senhaTextField.delegate = self

        self.addSubview(imageCadastrar)
        self.addSubview(imageLabel)
        self.addSubview(nomeTextField)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonCadastrarEEntrar)
        self.addSubview(buttonCancelar)

        buttonCancelar.addTarget(self, action: #selector(loginTap), for: .touchUpSide)

        NSLayoutConstraint.activate([


            imageCadastrar.widthAnchor.constraint(equalToConstant: 296),
            imageCadastrar.heightAnchor.constraint(equalToConstant: 269.89),
            imageCadastrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 47),
            imageCadastrar.topAnchor.constraint(equalTo: self.topAnchor, constant: 179),


            imageLabel.widthAnchor.constraint(equalToConstant: 265),
            imageLabel.topAnchor.constraint(equalTo: imageCadastrar.bottomAnchor, constant: 8),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 63),
            // imageLogin.trailingAnchor.constraint(equalTo: self.topAnchor, constant: -62),


            nomeTextField.widthAnchor.constraint(equalToConstant: 358),
            nomeTextField.heightAnchor.constraint(equalToConstant: 44),
            nomeTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            nomeTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 16),

            emailTextField.widthAnchor.constraint(equalToConstant: 358),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            emailTextField.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16),
            emailTextField.topAnchor.constraint(equalTo: nomeTextField.bottomAnchor, constant: 24),

            senhaTextField.widthAnchor.constraint(equalToConstant: 358),
            senhaTextField.heightAnchor.constraint(equalToConstant: 44),
            senhaTextField.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),

            buttonCadastrarEEntrar.widthAnchor.constraint(equalToConstant: 358),
            buttonCadastrarEEntrar.heightAnchor.constraint(equalToConstant: 50),
            buttonCadastrarEEntrar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 24),
            buttonCadastrarEEntrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),

            buttonCancelar.widthAnchor.constraint(equalToConstant: 358),
            buttonCancelar.heightAnchor.constraint(equalToConstant: 50),
            buttonCancelar.topAnchor.constraint(equalTo: buttonCadastrarEEntrar.bottomAnchor, constant: 16),
            buttonCancelar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),


        ])
    }

    //MARK: Actions
    @objc
    private func loginTap(){
        onLoginTap?()
    }()

}


extension RegisterView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField == nomeTextField {
            self.emailTextField.becomeFirstResponder()
        } else if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }

        return true

    }

}
