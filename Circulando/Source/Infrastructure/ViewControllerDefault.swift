import Foundation
import UIKit

class ViewControllerDefault: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //aumentar tamanho da fonte do título superior
        self.navigationController?.navigationBar.prefersLargeTitles = true

        //ocultar botacao da navigation controller
        self.navigationItem.setHidesBackButton(true, animated: false)

        //controle do teclado ao clicar na tela
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyBoardByTappingOutside))
        self.view.addGestureRecognizer(tap)

    }

    @objc

    func hideKeyBoardByTappingOutside () {
        self.view.endEditing(true)
    }

}