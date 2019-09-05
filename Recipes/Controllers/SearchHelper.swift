//
//  SearchHelper.swift
//  Recipes
//
//  Created by Aaron on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit


//MARK: - Search Bar Methods
extension RecipesViewController: UISearchBarDelegate {
    
  
    
    func searchBarSearchButtonTapped(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? blah : blah.filter { (item: filteredData.name) -> Bool in
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
    }
        tableView.reloadData()
    }
}
