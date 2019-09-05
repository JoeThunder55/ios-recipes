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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadValues() {
        guard let recipe = recipe else {
            return}
        nameLabel.text = recipe.name
        print(recipe.name)
    }

}
