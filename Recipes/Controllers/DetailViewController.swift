//
//  DetailViewController.swift
//  Recipes
//
//  Created by Aaron on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var instructionsTextField: UITextView!
    
    var delegate: Recipe?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateValues()
        // Do any additional setup after loading the view.
    }
    
    func updateValues() {
        
        nameLabel.text = delegate?.name
        instructionsTextField.text = delegate?.instructions
    }

    

}
