//
//  UITextField+Border.swift
//  Bluemoon
//
//  Created by J.A.R.V.I.S. on 2018. 11. 25..
//  Copyright © 2018년 mashup6th. All rights reserved.
//

import UIKit

extension UITextField {

    func setBottomBorder() {
        borderStyle = .none
        layer.backgroundColor = UIColor.white.cgColor

        layer.masksToBounds = false
        layer.shadowColor = #colorLiteral(red: 0.7882352941, green: 0.7882352941, blue: 0.7882352941, alpha: 1)
        layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 0.0
    }

}
