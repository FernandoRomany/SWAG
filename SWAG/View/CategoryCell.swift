//
//  CategoryCell.swift
//  SWAG
//
//  Created by Fernando Romany on 3/17/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryName.text = category.title
    }

}
