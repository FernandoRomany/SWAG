//
//  CategoriesVC.swift
//  SWAG
//
//  Created by Fernando Romany on 3/17/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var categoryTabel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTabel.dataSource = self
        categoryTabel.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell" ) as? CategoryCell {
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            cell.updateView(category: category)
            
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsSegue", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsSegue = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productsSegue.initProducts(category: sender as! Category)
        }
    }

}

