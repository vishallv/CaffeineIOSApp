//
//  GameView.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/21/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class GameView : UIView{
    
    
    //MARK: Properties
    private let gameView : UIImageView = {
        
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "ggg")
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        return iv
    }()
    
    private let liveLabel : UILabel = {
        let label = UILabel()
        label.text = "live"
        label.textColor = .white
        label.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textAlignment = .center
        
        return label
    }()
    
    private let ageLabel : UILabel = {
        let label = UILabel()
        label.text = "17+"
        label.textColor = .white
        label.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textAlignment = .center
        
        return label
    }()
    
    private let streamInfo :  UILabel = {
        return UILabel().createLabel(textValue: "Welcome back to your daily madness!", textSize: 30, font: .heavy)
    }()
    
    private let profileView : UIImageView = {
        return UIView().createProfileImageView(image: #imageLiteral(resourceName: "juju"))
    }()
    
    
    private let userNameLabel : UILabel = {
        return UILabel().createLabel(textValue: "Juju", textSize: 15, font: .medium)
    }()
    
    private let badgeView : UIImageView = {
           let iv = UIImageView()
           
           iv.image = #imageLiteral(resourceName: "icons8-verified-account-24")
           
           return iv
       }()
    
    private lazy var followButoon : UIButton = {
        
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-star-24").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleFollow), for: .touchUpInside)
        return button
    }()
    
    
    private lazy var clusterView : UIView = {
        
        let cView = UIView()
        
        cView.addSubview(userNameLabel)
        userNameLabel.centerY(inView: cView)
        userNameLabel.anchor(left : cView.leftAnchor)
        
        cView.addSubview(badgeView)
        badgeView.centerY(inView: cView)
        badgeView.anchor(left : userNameLabel.rightAnchor,paddingLeft: 10, width: 15,height: 15)
        
        cView.addSubview(followButoon)
        followButoon.centerY(inView: cView)
        followButoon.anchor(left : badgeView.rightAnchor,paddingLeft: 10, width: 20,height: 20)
        
        
        return cView
    }()
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        
        
        addSubview(gameView)
        gameView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        addStackLabel()
        addSubview(streamInfo)
        streamInfo.anchor(top:topAnchor,left: leftAnchor,
                          paddingTop: 60,paddingLeft: 20,width: 300)
        addSubview(profileView)
        profileView.anchor(bottom:bottomAnchor,right: rightAnchor,
                           paddingBottom: 5,paddingRight: 20,
                           width: 40,height: 40)
        
        addSubview(clusterView)
        clusterView.anchor(left: leftAnchor,bottom: bottomAnchor,
                           paddingLeft: 20,paddingBottom: 5,
                           width: 100,height: 50)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    @objc func handleFollow(){
        
        followButoon.setImage(#imageLiteral(resourceName: "icons8-star-24 (1)").withRenderingMode(.alwaysOriginal), for: .normal)
    }
    
    //MARK: Helper Functions
    
    func addStackLabel(){
        
        let stack = UIStackView(arrangedSubviews: [liveLabel,ageLabel])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 0
        
        addSubview(stack)
        stack.anchor(top:topAnchor,left: leftAnchor,
                     width: 100,height: 40)
    }
}
