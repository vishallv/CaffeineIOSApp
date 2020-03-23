//
//  InfoHeaderCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class InfoHeaderCell : UICollectionViewCell {
    
    //MARK: Properties
    
    var isRemove : Bool? {
        
        didSet {
            guard let isRemove = isRemove else {return}
            
            if isRemove{
                dateLabel.removeFromSuperview()
            }
        }
    }
    
    var dateText : String? {
        didSet{
            guard let dateText = dateText else {return}
            dateLabel.text = dateText
        }
    }
    
    private lazy var dateLabel : UILabel = {
        
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        return label
    }()
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(dateLabel)
            dateLabel.anchor(top:topAnchor,left: leftAnchor, paddingLeft: 10)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
}
