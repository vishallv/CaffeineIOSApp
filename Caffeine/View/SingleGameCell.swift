//
//  SingleGameCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class SingleGameCell : UICollectionViewCell{
    
    //MARK: Properties
    
    var backgroundImage : UIImage? {
        didSet{
            guard let backgroundImage = backgroundImage else {return}
            backgroundImageView.image = backgroundImage
            
        }
    }
    
    var gameImage : UIImage? {
        didSet{
            guard let gameImage = gameImage else {return}
            gameImageeView.image = gameImage
            
        }
    }
    
    private let backgroundImageView : UIImageView = {
        
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        return iv
    }()
    
    private let gameImageeView : UIImageView = {
        
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.layer.masksToBounds = true
        return iv
    }()
    
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backgroundImageView)
        backgroundImageView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        
        addSubview(gameImageeView)
        gameImageeView.setDimensions(height: 100, width: self.frame.width - 40)
        gameImageeView.centerY(inView: self)
        gameImageeView.centerX(inView: self)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
}
