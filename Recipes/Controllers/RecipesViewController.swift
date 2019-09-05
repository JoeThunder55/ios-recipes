//
//  RecipesViewController.swift
//  Recipes
//
//  Created by Aaron on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let networkController = RecipesNetworkClient()
    var blah: [Recipe] = []
    var filteredName: Recipe

    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkController.fetchRecipes { recipes, error in
            if let error = error {
                print("Hey Dude. There was an Error: \(error)")
                return
            }
            DispatchQueue.main.async {
                self.blah = recipes ?? []
                print(self.blah)
                self.tableView.reloadData()
                
            }
           
        }
        
       
    }
    
    func loadDataIntoArray() {
        networkController.fetchRecipes { recipes, error in
            if let error = error {
                print("Hey Dude. There was an Error: \(error)")
                return
            }
            self.blah = recipes ?? []
            print(self.blah)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailView" {
            if let indexPath = tableView.indexPathForSelectedRow, let vc = segue.destination as? DetailViewController {
                vc.delegate = blah[indexPath.row]
            }
        }
    }

}

extension RecipesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "TableCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? RecipesTableViewCell
        let theRecipe = self.blah[indexPath.row]
//        cell?.recipe = theRecipe
        cell?.nameLabel.text = theRecipe.name
        cell?.nameLabel.textColor = .black
        return cell ?? RecipesTableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blah.count
    }
    
}
