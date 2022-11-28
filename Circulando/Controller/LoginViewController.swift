//
//  LoginViewController.swift
//  Circulando
//
//  Created by Izadora Netz on 28/11/22.
//

import Foundation
import UIKit

class LoginViewController: UINavigationController {

    var viewMain = LoginView()

    override func loadView() {
        self.view = viewMain
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    


}