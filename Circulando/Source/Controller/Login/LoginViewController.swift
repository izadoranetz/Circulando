//
//  LoginViewController.swift
//  Circulando
//
//  Created by Izadora Netz on 28/11/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    var viewMain = LoginView()

    override func loadView() {
        self.view = viewMain
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

}