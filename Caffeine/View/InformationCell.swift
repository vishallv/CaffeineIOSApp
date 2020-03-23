//
//  InformationCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class InformationCell : UICollectionViewCell{
    
    
    //MARK: Properties
    
    var changeOnce : Bool = true
    
    var backgorundImage : UIImage? {
           
           didSet{
               
               guard let backgorundImage = backgorundImage else {return}
               
               playerIamge.image = backgorundImage
           }
       }
    var primaryheading : String? {
        
        didSet{
            guard let primaryheading = primaryheading else {return}
            primaryLabel.text = primaryheading
            
        }
    }
    
    var nameOfUser : String? {
        
        didSet{
            guard let nameOfUser = nameOfUser else {return}
            userName.text = nameOfUser
            
        }
    }
    
    
    var colorArray : [Int]?{
        
        didSet{
            
            guard let colorArray = colorArray else {return}
            
            if changeOnce{
            playerIamge.setGrdientBackGround(colorOne: UIColor.rgb(red: CGFloat(colorArray[0]), green: CGFloat(colorArray[1]), blue: CGFloat(colorArray[2]), alpha: 0.8), colorTwo: UIColor.rgb(red: CGFloat(colorArray[2]), green: CGFloat(colorArray[4]), blue: CGFloat(colorArray[5]), alpha: 0.8),width: 414)
                changeOnce.toggle()
            }
        }
        
    }
    
    
    var profileImage : UIImage? {
        
        didSet{
            
            guard let profileImage = profileImage else {return}
            
            userImageView.image = profileImage
        }
    }
    


    
    private  var playerIamge : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "drake-getty-bg027")
        iv.contentMode = .scaleToFill
        return iv
    }()
    
    private let dataLabel  : UILabel = {
        return UILabel().createLabel(textValue: "Thursday,03/19 at 9pm", textSize: 15, font: .bold, isTrue: true)
    }()
    
    private let primaryLabel : UILabel = {

        return UILabel().createLabel(textValue: "Epic rap battle with drake", textSize: 30, font: .heavy)
    }()
    
    private let secondaryLabel : UILabel = {
        
        return UILabel().createLabel(textValue: "Join drake and his sqaud perform live rap battle against the best rappers in the world. You Dont want to miss out on this battle.", textSize: 15, font: .medium)
    }()
    
    private lazy var userImageView : UIImageView = {
        
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        iv.layer.cornerRadius = 40/2
        return iv
    }()
    
    
    private let userName : UILabel = {
        return UILabel().createLabel(textValue: "TheBoy", textSize: 15, font: .medium)
    
    }()
    
    private let badgeView : UIImageView = {
        let iv = UIImageView()
        
        iv.image = #imageLiteral(resourceName: "icons8-verified-account-24")
        
        return iv
    }()
    
    
    
    private lazy var clusterView : UIView = {
        
        let cView = UIView()
        
        cView.addSubview(userImageView)
        userImageView.centerY(inView: cView)
        userImageView.anchor(left : cView.leftAnchor, width: 40,height: 40)
        
        cView.addSubview(userName)
        userName.centerY(inView: cView)
        userName.anchor(left : userImageView.rightAnchor,paddingLeft: 10)
        
        cView.addSubview(badgeView)
        badgeView.centerY(inView: cView)
        badgeView.anchor(left : userName.rightAnchor,paddingLeft: 10, width: 20,height: 20)
        
        
        return cView
    }()
    
    private lazy var followButoon : UIButton = {
        
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-star-24").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleFollow), for: .touchUpInside)
        return button
    }()
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
//        addSubview(mainView)
//        mainView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        
        addSubview(playerIamge)
        playerIamge.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        
        
        addSubview(dataLabel)
        dataLabel.anchor(top:topAnchor,left: leftAnchor,width: 200,height: 34)
        
        addSubview(primaryLabel)
        primaryLabel.anchor(top:dataLabel.bottomAnchor,left: leftAnchor,
                            paddingTop: 20,paddingLeft: 20,width: 300)
        
        addSubview(secondaryLabel)
        secondaryLabel.anchor(top: primaryLabel.bottomAnchor,left: leftAnchor,
                              paddingTop: 20,paddingLeft: 20,width: 300)
        
        addSubview(clusterView)
        clusterView.anchor(left : leftAnchor , bottom: bottomAnchor,
                           paddingLeft: 20,paddingBottom: 20,
                           width: 150, height: 50)
        
        addSubview(followButoon)
        followButoon.anchor(left: clusterView.rightAnchor,bottom: bottomAnchor,
                            paddingLeft: 10,paddingBottom: 33, width: 25,height: 25)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    @objc func handleFollow(){
        
        followButoon.setImage(#imageLiteral(resourceName: "icons8-star-24 (1)").withRenderingMode(.alwaysOriginal), for: .normal)
    }
    
    //MARK: Helper Functions
}
