import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
  //MARK: - Clousures
  
  lazy var homeView: HomeView = {
    let homeView = HomeView()
    
    return homeView
  }()

  override func loadView(){
    self.view = homeView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Home"
  }

}