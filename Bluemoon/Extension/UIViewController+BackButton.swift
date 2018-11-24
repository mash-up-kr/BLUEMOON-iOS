//
//  UIViewController+BackButton.swift
//  Bluemoon
//
//  Created by 이재성 on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import UIKit

extension UIViewController {
    func setBackButton(backTitle: String, image: UIImage, tintColor: UIColor) {
        let backItem = UIBarButtonItem()
        backItem.title = backTitle
        navigationItem.backBarButtonItem = backItem
        
        navigationController?.navigationBar.backIndicatorImage = image
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = image
        navigationController?.navigationBar.tintColor = tintColor
    }
}
