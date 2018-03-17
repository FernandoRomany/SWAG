//
//  Category.swift
//  SWAG
//
//  Created by Fernando Romany on 3/17/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title : String, imageName : String) {
        self.title = title
        self.imageName = imageName
    }
}
