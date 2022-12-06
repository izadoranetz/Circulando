//
//  LoginView.swift
//  Circulando
//
//  Created by Izadora Netz on 28/11/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        //inicializa o visual
        setupVisualElements()
    }

    //imagem
    var imageLogin = ImageDefault(image: "ImageLogin")

    //label imagem
    var imageLabel = LabelDefault(text: "Aumente o ciclo de vida de suas coisas", font: UIFont.systemFont(ofSize: 16, weight: .regular))

    //input e-mail
    var emailTextField = TextFieldDefault(text: "E-mail")

    //input senha
    var senhaTextField = TextFieldDefault(text: "Senha")

    //botao entrar
    var buttonEntrar = ButtonDefault(text: "Entrar")

    //botao cadastrar
    var buttonCadastrar = ButtonDefault(text: "Cadastrar")


    func setupVisualElements() {
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonEntrar)
        self.addSubview(buttonCadastrar)

        NSLayoutConstraint.activate([

            imageLogin.widthAnchor.constraint(equalToConstant: 296),
            imageLogin.heightAnchor.constraint(equalToConstant: 304.94),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 47),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 179),

            imageLabel.widthAnchor.constraint(equalToConstant: 265),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 8),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 63),
            // imageLogin.trailingAnchor.constraint(equalTo: self.topAnchor, constant: -62),

            emailTextField.widthAnchor.constraint(equalToConstant: 358),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 32),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),

            senhaTextField.widthAnchor.constraint(equalToConstant: 358),
            senhaTextField.heightAnchor.constraint(equalToConstant: 44),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),

            buttonEntrar.widthAnchor.constraint(equalToConstant: 358),
            buttonEntrar.heightAnchor.constraint(equalToConstant: 50),
            buttonEntrar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 32),
            buttonEntrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),

            buttonCadastrar.widthAnchor.constraint(equalToConstant: 358),
            buttonCadastrar.heightAnchor.constraint(equalToConstant: 50),
            buttonCadastrar.topAnchor.constraint(equalTo: buttonEntrar.bottomAnchor, constant: 16),
            buttonCadastrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),


        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}