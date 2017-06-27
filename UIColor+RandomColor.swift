//
//  UIColor+RandomColor.swift
//  SwifTap
//
//  Created by Josh Reno on 1/21/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
