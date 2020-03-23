//
//  SearchCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class SearchCell : UITableViewCell {
    
    
    
    //MARK: Properties
    
//    private lazy var iamge
    
    var userImage : UIImage? {
        didSet{
            guard let userImage = userImage else {return}
            
            proImageView.image = userImage
        }
    }
    
    var userName :String? {
        didSet{
            
            guard let userName = userName else {return}
           
            nameLabel.text = userName
        }
    }
    
    private lazy var mainContentView : UIView = {
        let mView = UIView()
        
        mView.addSubview(proImageView)
        proImageView.centerY(inView: mView)
        proImageView.anchor(left: mView.leftAnchor,paddingLeft: 10,
                            width: 40,height: 40)
        
        mView.addSubview(nameLabel)
        nameLabel.centerY(inView: mView)
        nameLabel.anchor(left: proImageView.rightAnchor,paddingLeft: 12)
        
        mView.addSubview(badgeImgaeView)
        badgeImgaeView.setDimensions(height: 15, width: 15)
        badgeImgaeView.centerY(inView: mView)
        badgeImgaeView.anchor(left : nameLabel.rightAnchor,paddingLeft: 6)
        
        
        
        return mView
        
    }()
    
    
    
    
    private let proImageView : UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 40/2
        return iv
    }()
    
    private let nameLabel : UILabel = {
        let label = UILabel()
        label.textColor  = .black
        return label
    }()
    
    
    private let badgeImgaeView  :UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "icons8-verified-account-96")
        return iv
    }()
    
    private lazy var followButton  : UIButton = {
        
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-star-96").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleFollowPressed), for: .touchUpInside)
        return button
    }()
    
    
    
    //MARK: Life Cycles
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(mainContentView)
        mainContentView.centerY(inView: self)
        mainContentView.anchor(left : leftAnchor,paddingLeft: 12)
        
        addSubview(followButton)
        followButton.centerY(inView: self)
        followButton.anchor(right : rightAnchor,paddingRight: 20,width: 20,height: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    @objc func handleFollowPressed(){
        
        UIView.animate(withDuration: 0.2) {
            
            self.followButton.setImage(#imageLiteral(resourceName: "icons8-star-96 (1)").withRenderingMode(.alwaysOriginal), for: .normal)
        }
       
            
        
        

//        UIView.animate(withDuration: 0.2) {
//
//        }
        
       
        
    }
    
    //MARK: Helper Functions
    
}
