//
//  LoginCoordinator.swift
//  Circulando
//
//  Created by Izadora Netz on 28/11/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {

    var navigationController:  UINavigationController

    //construtor
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)

        viewController.onLoginTap = {
            self.gotoLogin()
        }

        viewController.onRegisterTap = {
            self.gotoRegister()
        }
    }

    func gotoLogin () {
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
    }

    func gotoRegister () {
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }

}