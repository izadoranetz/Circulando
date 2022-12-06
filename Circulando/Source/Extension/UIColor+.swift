import Foundation
import UIKit

extension UIColor {

    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }

    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)

    static var buttonBackGroundColorPrimary: UIColor {
        UIColor(named: "buttonBackGroundColorPrimary") ?? .UIColor(red: 0.251, green: 0.502, blue: 0.439, alpha: 1).cgColor
    }

    static var buttonBackGroundColorSecondary: UIColor {
        UIColor(named: "buttonBackGroundColorSecondary") ?? .UIColor(red: 0.188, green: 0.749, blue: 0.616, alpha: 1).cgColor
    }

    static var buttonBackGroundColorTerciary: UIColor {
        UIColor(named: "buttonBackGroundColorTerciary") ?? UIColor(red: 0.902, green: 0.584, blue: 0.451, alpha: 0.15).cgColor
    }

    static var textFieldBackGroundColor: UIColor {
        UIColor(named: "textFieldBackGroundColor") ?? .white
    }

    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .UIColor(red: 0.235, green: 0.235, blue: 0.263, alpha: 0.6)
    }
}