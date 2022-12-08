import Foundation
import UIKit

class HomeCoordinator: Coordinator {
  
  private let navigationController: UINavigationController
  
  lazy var homeViewController: HomeController = {
    let viewController = HomeViewController()
    return viewController
  }()
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let viewController = HomeViewController()
    self.navigationController.pushViewController(viewController, animated: true)
  }

}