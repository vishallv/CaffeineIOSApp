//
//  CaffeineFooterCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let searchReuseIdentifiertwo = "SearchCellTwo"
class CaffeineFooterCell : UICollectionViewCell{
    
    
    //MARK: Properties
    private let userImage : [UIImage] = [#imageLiteral(resourceName: "drake-getty-bg027"),#imageLiteral(resourceName: "246x0w"),#imageLiteral(resourceName: "offset"),#imageLiteral(resourceName: "dojocat"),#imageLiteral(resourceName: "juju")]
    private let userName: [String] = ["TheBoy","URLTV","OffsetYRn","DojoCat","Juju"]
    
    private var tableView : UITableView!
    
    //MARK: Life Cycles
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .systemPink
        configureTableview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    func configureTableview(){
        
        tableView = UITableView(frame: .zero, style: .plain)
//        tableView.backgroundColor = .systemPink
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        tableView.isScrollEnabled = false
        tableView.tableFooterView = UIView()
        
        tableView.backgroundColor = .white
        
        addSubview(tableView)
        tableView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        
        tableView.register(SearchCell.self, forCellReuseIdentifier: searchReuseIdentifiertwo)
        
    }
}


extension CaffeineFooterCell : UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: searchReuseIdentifiertwo, for: indexPath) as! SearchCell
        cell.selectionStyle  = .none
        cell.userImage = userImage[indexPath.row]
        cell.userName = userName[indexPath.row]
        return cell
    }
    
    
}
