//
//  UIView+Radius.swift
//  Bluemoon
//
//  Created by Gaon Kim on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
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
