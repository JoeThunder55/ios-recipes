//
//  RecipesTableViewCell.swift
//  Recipes
//
//  Created by Aaron on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var recipe: Recipe? {
        didSet {
            loadValues()
        }
    }
    
    func loadValues() {
        guard let recipe = recipe else {
            return}
        nameLabel.text = recipe.name
        print(recipe.name)
    }

}
