import Foundation
import UIKit

class RegisterViewController: UIViewController {

    var viewMain = RegisterView()

    override func loadView() {
        self.view = viewMain
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

}