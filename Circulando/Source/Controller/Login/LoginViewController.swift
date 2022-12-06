//
//  LoginViewController.swift
//  Circulando
//
//  Created by Izadora Netz on 28/11/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    //MARK: Closure
    var onRegisterTap: (() -> Void)?

    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()

    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

}