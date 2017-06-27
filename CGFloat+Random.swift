//
//  CGFloat+Random.swift
//  SwifTap
//
//  Created by Josh Reno on 1/21/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
