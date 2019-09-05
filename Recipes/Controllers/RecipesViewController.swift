//
//  RecipesViewController.swift
//  Recipes
//
//  Created by Aaron on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
    
    let networkController = RecipesNetworkClient()
    var recipes: [Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        networkController.fetchRecipes { recipes, Error? in
            
        }
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifer == "toDetailView" {
            if let vc = segue.destination as? DetailViewController {
                vc.delegate = recipes[indexPath.row]
            }
        }
    }


}

extension RecipesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let
    }
    
    
    
    
    
    
}
