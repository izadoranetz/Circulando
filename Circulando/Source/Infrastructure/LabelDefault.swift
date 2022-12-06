import Foundation
import UIKit

class LabelDefault: UILabel {
    init(text: String, font: UIFont){
        super.init(frame: .zero)
        initDefault(text: text)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initDefault (text: String, font: UIFont){
        self.text = text
        self.textColor = .textLabelColor
        self.font = font
        self.adjustFontSizeToFitWidth = true
        self.numberOfLine = 0;
        self.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}