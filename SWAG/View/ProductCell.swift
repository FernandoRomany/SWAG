//
//  ProductCell.swift
//  SWAG
//
//  Created by Fernando Romany on 3/22/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!

    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        ProductPrice.text = product.price
    }
}
