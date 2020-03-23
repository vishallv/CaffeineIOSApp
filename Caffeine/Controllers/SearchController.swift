//
//  SearchController.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let searchReuseIdentifier = "SearchCell"

class SearchController : UITableViewController {
    
    private let userImage : [UIImage] = [#imageLiteral(resourceName: "drake-getty-bg027"),#imageLiteral(resourceName: "246x0w"),#imageLiteral(resourceName: "offset"),#imageLiteral(resourceName: "dojocat"),#imageLiteral(resourceName: "juju")]
    private let userName: [String] = ["TheBoy","URLTV","OffsetYRn","DojoCat","Juju"]
    let searchBar = UISearchBar()
    
    
    //MARK: Properties
    
    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureNavBar()
        configureTableView()
    }
    
  
    
    
    //MARK: Helper Function
    
    func configureNavBar(){
        
       
        navigationItem.title = "Find people"
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
  
    }
    
    func configureTableView(){
        view.backgroundColor = .white
        tableView.rowHeight = 60
        tableView.tableFooterView = UIView()
        tableView.register(SearchCell.self, forCellReuseIdentifier: searchReuseIdentifier)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userImage.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: searchReuseIdentifier, for: indexPath) as! SearchCell
          
//        print(indexPath.row)
        cell.userImage = userImage[indexPath.row]
        cell.userName = userName[indexPath.row]
               
               return cell
    }
    
    
    
    //MARK: Selector
    
}
