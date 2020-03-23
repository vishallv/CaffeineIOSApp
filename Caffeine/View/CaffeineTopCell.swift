//
//  CaffeineTopCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/20/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class CaffeineTopCell : UICollectionViewCell{
    
    
    //MARK: Properties
    
    private let welcomeLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Hi there vishboy!"
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        return label
    }()
    
    private let profileImageView : UIImageView = {
        
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "icons8-user-96")
        iv.backgroundColor = #colorLiteral(red: 0.5803921569, green: 0.5882352941, blue: 0.7490196078, alpha: 1)
        iv.layer.cornerRadius = 70/2
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        return iv
    }()
    
    
    private lazy var topInfoView : UIView = {
        
        let view = UIView()
        
        
        view.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 1, alpha: 1)
        view.addSubview(welcomeLabel)
        welcomeLabel.anchor(top: view.topAnchor,left: view.leftAnchor,
                            paddingTop: 20,paddingLeft: 20,width: 200)
        
        view.addSubview(profileImageView)
        profileImageView.anchor(top: view.topAnchor,right: view.rightAnchor,
                                paddingTop: 20,paddingRight: 20,
                                width: 70,height: 70)
        
        
        return view
    }()
    
    private let gamerView : GameView = {
        
        return GameView()
    }()
    
   
     private let gameImageView: UIImageView = {
            
        let iv = UIImageView().createProfileImageView(image: #imageLiteral(resourceName: "fortnite"),check:false)
            
        let label = UILabel().createLabel(textValue: "Gaming", textSize: 15, font: .bold)
        
        iv.addSubview(label)
        label.centerY(inView: iv)
        label.centerX(inView: iv)
            
        return iv
        }()
    
    private let entertainmentImageView: UIImageView = {
        
        let iv = UIImageView().createProfileImageView(image: #imageLiteral(resourceName: "caf"),check:false)
        
    let label = UILabel().createLabel(textValue: "Entertainment", textSize: 15, font: .bold)
    
    iv.addSubview(label)
    label.centerY(inView: iv)
    label.centerX(inView: iv)
        
    return iv
    }()
    
    private let joinLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Join your friends"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        return label
    }()
    
    private let joinInfoLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Follow your favourite people to see shows they.re watching or broadcasting"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 0
        
        return label
    }()
    
    private let starView :UIImageView = {
        
        return UIView().createProfileImageView(image: #imageLiteral(resourceName: "icons8-star-96 (1)"))
    }()
    
    
    private lazy var  friendView : UIView = {
        
        let fView = UIView()
        fView.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 1, alpha: 1)
        
        fView.addSubview(joinLabel)
        joinLabel.anchor(top: fView.topAnchor, left: fView.leftAnchor,paddingTop: 30,paddingLeft: 20,
                         height: 50)
        
        fView.addSubview(joinInfoLabel)
        joinInfoLabel.anchor(top: joinLabel.bottomAnchor, left: fView.leftAnchor,paddingTop: 5,paddingLeft: 20,width: 280
                         )
        
        fView.addSubview(starView)
               starView.anchor(top: fView.topAnchor, right: fView.rightAnchor,paddingTop: 40,paddingRight: 20,
                               width: 30, height: 30)
        
        
        
        
        return fView
    }()
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        addSubview(topInfoView)
        topInfoView.anchor(top:topAnchor,left: leftAnchor,right: rightAnchor,
                           height: 115)
        
        addSubview(gamerView)
        gamerView.anchor(top: topInfoView.bottomAnchor,left: leftAnchor,right: rightAnchor,
                         paddingTop: 10,height: 200)
        
        addStackView()
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    func addStackView(){
        let stack = UIStackView(arrangedSubviews: [gameImageView,entertainmentImageView])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        
        addSubview(stack)
        stack.anchor(top:gamerView.bottomAnchor,left: leftAnchor,right: rightAnchor,
                     paddingTop: 10,height: 100)
        
        addSubview(friendView)
        friendView.anchor(top: stack.bottomAnchor,left: leftAnchor,right: rightAnchor,
                     height: 150)
        
    }
}
