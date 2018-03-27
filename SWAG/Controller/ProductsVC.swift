//
//  ProductsVC.swift
//  SWAG
//
//  Created by Fernando Romany on 3/19/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController  {
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    
}
