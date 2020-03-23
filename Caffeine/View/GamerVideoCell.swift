//
//  GamerVideoCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class GamerVideoCell : UICollectionViewCell{
    
    //MARK: Properties
    
    var gameViewImage : UIImage?{
        
        didSet{
            guard let gameViewImage = gameViewImage else {return}
            gameView.imageBackGround = gameViewImage
        }
    }
    
    var gameInfoString : String?{
        
        didSet{
            guard let gameInfoString = gameInfoString else {return}
            gameView.streamInfoText = gameInfoString
        }
    }
    
    
    private let gameView : GameView = {
        
        let gameView = GameView()
//        gameView.imageBackGround = #imageLiteral(resourceName: "fortnite")
        
        return gameView
    }()
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(gameView)
        gameView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,
                        right: rightAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
}
