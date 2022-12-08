import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault {

    //MARK: Closure
    var onLoginTap: (() ->Void)?

    lazy var registerView: RegisterView() = {
        let registerView = RegisterView()
        registerView.onLoginTap = {
            self.onLoginTap?()
        }
        return registerView
    }()

    override func loadView() {
        self.view = registerView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastrar"

    }

}