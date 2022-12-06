import Foundation
import UIKit

class RegisterCoordinator: Coordinator {

    var navigationController:  UINavigationController

    //construtor
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)

        viewController.onLoginTap = {
            self.gotoLogin()
        }
    }

    func gotoLogin() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()

}