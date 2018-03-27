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
    
    private var shirts = [
        Product(title: "Dark shirt", price: "$20", imageName: "shirt01.png"),
        Product(title: "Awesome shirt", price: "$25", imageName: "shirt02.png"),
        Product(title: "Red shirt", price: "$25", imageName: "shirt03.png"),
        Product(title: "Gray shirt", price: "$15", imageName: "shirt04.png"),
        Product(title: "Good shirt", price: "$30", imageName: "shirt05.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "Shirts":
            return getShirts()
        default:
            return getShirts()
        }
    }
    
    func getShirts() ->[Product] {
        return shirts
    }
    
}
