//
//  UIView+Border.swift
//  Bluemoon
//
//  Created by J.A.R.V.I.S. on 2018. 11. 25..
//  Copyright © 2018년 mashup6th. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
