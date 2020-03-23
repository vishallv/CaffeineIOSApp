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
    private let gameView : GameView = {
        
        return GameView()
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
