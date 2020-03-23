//
//  SettingController.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/18/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let reuseIdentifier = "SettingCell"

class SettingController : UIViewController{
    
    //MARK: Properties
    private let settingInfo : [String] = ["Info","Gold and credits","Settings"]
    
    private let tableView = UITableView()
    
    private let userInfo : UseInfoView = {
        let info = UseInfoView()
        
        return info
    }()
    
    private lazy var footerView : UIView = {
        let fView = UIView()
        fView.backgroundColor = #colorLiteral(red: 0.7501627207, green: 0.7505284548, blue: 0.8089274168, alpha: 1)
        fView.alpha = 0.5
        
        fView.addSubview(signOutButton)
        signOutButton.anchor(top: fView.topAnchor , left: fView.leftAnchor,right: fView.rightAnchor,
                             paddingTop: 50,height: 35)

        return fView
    }()
    
    
    private let signOutButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("sign out", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    //MARK: Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        configureUI()
        configureTableView()
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    func configureUI(){
        
        view.backgroundColor = .white
        
        view.addSubview(userInfo)
        userInfo.anchor(top: view.safeAreaLayoutGuide.topAnchor,left: view.leftAnchor,right: view.rightAnchor)
        configureTableView()
        
        view.addSubview(footerView)
        footerView.anchor(top: tableView.bottomAnchor, left: view.leftAnchor,bottom: view.bottomAnchor,right: view.rightAnchor
                          )
        
    }
    
    func configureTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 35
        tableView.tableFooterView = UIView()
        tableView.isScrollEnabled = false
        
        
        tableView.register(SettingCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.frame = CGRect(x: 0, y:410, width: view.frame.width, height: tableView.rowHeight*3)
        view.addSubview(tableView)
//        tableView.anchor(top: userInfo.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor)
        
    }
}

extension SettingController :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SettingCell
        
        cell.textForCell = settingInfo[indexPath.row]
        
        return cell
        
    }
    
    
}
