//
//  SQMainCollectionViewCell.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/16/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//

import UIKit
import Haneke

class SQMainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var vendorLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var product:SQProduct?
    
    func setProductDetails(product:SQProduct) {
        self.product = product
        vendorLabel.text = product.productVendor
        nameLabel.text = product.productName
        priceLabel.text = "\(SQAppSettings.currency)\(product.productPrice)"
        imageView.hnk_setImageFromURL(NSURL(string: product.productImageUrl)!)
    }
    
}
