//
//  UIView+Shadow.swift
//  Bluemoon
//
//  Created by Gaon Kim on 24/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var shadowColor: UIColor? {
        get {
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }

    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }

    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable var shadowSpread: CGFloat {
        get {
            return layer.shadowPath?.boundingBox.maxX ?? 0
        }
        set {
            let dx = -newValue
            let rect = bounds.insetBy(dx: dx, dy: dx)
            layer.shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }

    @IBInspectable var shadowBlur: CGFloat {
        get {
            return layer.shadowRadius * 2
        }
        set {
            layer.shadowRadius = newValue / 2.0
        }
    }

}
