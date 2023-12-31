//
//  UIColor+Extensions.swift
//  InfinitePictureFeed
//
//  Created by Илья Подлесный on 30.11.2023.
//

import UIKit

//extension UIColor {
//    static var ipfGreen: UIColor { UIColor(named: "IPF Green") ?? UIColor.green }
//    static var ipfRed: UIColor { UIColor(named: "IPF Red") ?? UIColor.red }
//    static var ipfBlack: UIColor { UIColor(named: "IPF Black") ?? UIColor.black}
//    static var ipfBackground: UIColor { UIColor(named: "IPF Background") ?? UIColor.darkGray }
//    static var ipfGray: UIColor { UIColor(named: "IPF Gray") ?? UIColor.gray }
//    static var ipfWhite: UIColor { UIColor(named: "IPF White") ?? UIColor.white}
//}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")
       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }
   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
