//
//  StarCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class StarCell : UICollectionViewCell {
    
    

    //MARK: Properties
    

    
    var setOnce : Bool = true
    
    var setGradientColor: [Int]?
    {

        didSet{

            guard let colors = setGradientColor else {return}
            if setOnce{
            configureGradient(colors: colors)
                setOnce = false
            }
        }
    }
    
    var profileImage : UIImage?{
        didSet{
             guard let profileImage = profileImage else {return}
            
            profileImageView.image = profileImage
        }
    }
    var firstName: String? {
        didSet{
            
             guard let firstName = firstName else {return}
            firstnameLabel.text = firstName
            
        }
    }
    
    var userName: String? {
        
        didSet{
             guard let userName = userName else {return}
            usernameLabel.text = userName
            
        }
    }
    
    
    private let profileImageView : UIImageView = {
        let iv = UIImageView()
               iv.layer.masksToBounds = true
               iv.contentMode = .scaleAspectFill
               iv.layer.cornerRadius = 120/2
               return iv
    }()
    
    private let firstnameLabel : UILabel = {
        return UILabel().createLabel(textValue: "Brake the man", textSize: 20, font: .heavy)
    }()
    private let usernameLabel : UILabel = {
        return UILabel().createLabel(textValue: "The Boy", textSize: 14, font: .medium)
    }()
    
    private let badgeView : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "icons8-verified-account-24")
        return iv
    }()
    
    private lazy var followButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-star-100").withRenderingMode(.alwaysOriginal), for: .normal)
        
        return button
    }()
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.masksToBounds = true
        layer.cornerRadius = 20
        
        addSubview(profileImageView)
        profileImageView.centerX(inView: self)
        profileImageView.anchor(top:topAnchor,paddingTop: 20,width: 120,height: 120)
        
        addSubview(usernameLabel)
        usernameLabel.anchor(left:leftAnchor,bottom: bottomAnchor,paddingLeft: 20,paddingBottom: 10,height: 20)
        
        addSubview(badgeView)
        badgeView.anchor(left:usernameLabel.rightAnchor,bottom: bottomAnchor,paddingLeft: 5,paddingBottom: 12,
                         width: 15,height: 15)
        
        addSubview(firstnameLabel)
        firstnameLabel.anchor(left:leftAnchor,bottom: usernameLabel.topAnchor,paddingLeft: 20,paddingBottom: 8,
                         width: 150)
        
        addSubview(followButton)
        followButton.anchor(top:topAnchor,right: rightAnchor,paddingTop: 105,paddingRight: 20,
                            width: 45,height: 45)
        
        
        

        
        
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    func configureGradient(colors: [Int]) {
        
        let colorOne : UIColor = UIColor.rgb(red: CGFloat(colors[0]), green: CGFloat(colors[1]), blue: CGFloat(colors[2]), alpha: 1)
        let colorTwo : UIColor = UIColor.rgb(red: CGFloat(colors[3]), green: CGFloat(colors[4]), blue: CGFloat(colors[5]), alpha: 1)
        
        self.setGrdientBackGround(colorOne: colorOne, colorTwo: colorTwo, width: self.frame.width)
        
    }
    


}
