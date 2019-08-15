//
//  Color.swift
//  Niles West Bell Schedule
//
//  Created by Alush Benitez on 5/9/19.
//  Copyright © 2019 Alush Benitez. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}

let red = UIColor(red: 255, green: 63, blue: 44)
let blue = UIColor(red: 0, green: 190, blue: 255)
let green = UIColor(red: 64, green: 211, blue: 73)
let orange = UIColor(red: 255, green: 169, blue: 48)
let purple = UIColor(red: 114, green: 83, blue: 149)
let pink = UIColor(red: 246, green: 163, blue: 171)
let yellow = UIColor(red: 255, green: 235, blue: 65)
let brown = UIColor(red: 166, green: 108, blue: 35)
let black = UIColor(red: 60, green: 60, blue: 60)

