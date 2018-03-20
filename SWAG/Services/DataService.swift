//
//  DataService.swift
//  SWAG
//
//  Created by Fernando Romany on 3/20/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private var categories = [
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "Hoodies", imageName: "hoodies.png"),
        Category(title: "Hats", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
