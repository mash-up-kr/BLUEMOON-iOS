//
//  SubscriptionTableViewCell.swift
//  Bluemoon
//
//  Created by Gaon Kim on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import UIKit

class SubscriptionTableViewCell: UITableViewCell {
    @IBOutlet var roundedImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    private var model: String = ""

    override func awakeFromNib() {
        super.awakeFromNib()

        roundedImageView.layer.cornerRadius = roundedImageView.frame.height / 2
        roundedImageView.layer.masksToBounds = true
    }

    func setData(_ data: String) {
        model = data
        nameLabel.text = model
        roundedImageView.image = #imageLiteral(resourceName: "kmk.jpeg")
    }
}
