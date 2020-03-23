//
//  UseInfoView.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/18/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit


class UseInfoView : UIView{
    
    //MARK: Properties
    
    private let profileImageView : UIImageView = {
        
        let iv = UIImageView()
        iv.backgroundColor = #colorLiteral(red: 0.5294921994, green: 0.4962878823, blue: 1, alpha: 1)
        iv.image = #imageLiteral(resourceName: "icons8-user-96")
        return iv
        
        
    }()
    
    private let userNameLabel : UILabel = {
        
        let label = UILabel()
        label.text = "vishboy"
        label.font  = UIFont.systemFont(ofSize: 25, weight: .heavy)
        label.textColor = .black
        return label
    }()
    
    private let follwerLabeel : UILabel = {
        
        return UILabel().createFollowLabel(placeholder: "FOLLOWERS")
    }()
    private let followLable : UILabel = {
        
        return UILabel().createFollowLabel(placeholder: "FOLLOWING")
    }()
    
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureInfoView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Helper functions
    
    func configureInfoView(){
        backgroundColor = .white
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor,paddingTop: 20)
        profileImageView.centerX(inView: self)
        profileImageView.setDimensions(height: 150, width: 150)
        profileImageView.layer.cornerRadius = 150/2
        
        
        addSubview(userNameLabel)
        userNameLabel.centerX(inView: self)
        userNameLabel.anchor(top: profileImageView.bottomAnchor,paddingTop: 20)
        
        configureStackView()
//        addSubview(follwerLabeel)
//        follwerLabeel.anchor(top:userNameLabel.bottomAnchor,paddingTop: 20)
        
    }
    
    func configureStackView(){
        
        let stack = UIStackView(arrangedSubviews: [follwerLabeel,followLable])
        stack.axis = .horizontal
        stack.spacing = 70
        stack.distribution = .fillEqually
        
        addSubview(stack)
        stack.centerX(inView: self)
        stack.anchor(top:userNameLabel.bottomAnchor, paddingTop: 40)
    }
    
}
