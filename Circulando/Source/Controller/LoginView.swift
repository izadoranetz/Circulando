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
        self.backgroundColor = .white

        //inicializa o visual
        setupVisualElements()
    }

    //imagem
    var imageLogin: UIImageView = {
        let imagem = UIImageView ()
        imagem.image = UIImage(named: "ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false

        return imagem
    }()

    //label
    var imageLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.textAlignment = .center
        label.attributedText = NSMutableAttributedString(string: "Aumente o ciclo de vida de suas coisas", attributes: [NSAttributedString.Key.kern: -0.41, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    func setupVisualElements() {
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)

        NSLayoutConstraint.activate([

            imageLogin.widthAnchor.constraint(equalToConstant: 296),
            imageLogin.heightAnchor.constraint(equalToConstant: 304.94),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 47),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 179),

            
            imageLabel.widthAnchor.constraint(equalToConstant: 265),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 8),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 63),
            // imageLogin.trailingAnchor.constraint(equalTo: self.topAnchor, constant: -62),

        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}