//
//  UIView+Radius.swift
//  Bluemoon
//
//  Created by J.A.R.V.I.S. on 2018. 11. 25..
//  Copyright © 2018년 mashup6th. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
