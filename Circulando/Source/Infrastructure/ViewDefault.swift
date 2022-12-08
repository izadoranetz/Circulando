import Foundation
import UIKit

class ViewDefault: UIView {

    //MARK: Inicialização
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        //inicializa o visual
        setupVisualElements()
    }

    func setupVisualElements() {
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}