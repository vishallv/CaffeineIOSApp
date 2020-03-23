//
//  SettingCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

class SettingCell : UITableViewCell{
    
    //MARK: Properties
    var textForCell : String? {
        
        didSet {
            guard let text = textForCell else {return}
            infoLabel.text = text
        }
    }
    
    
    private let infoLabel : UILabel = {
        
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    private let nextImageView : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "icons8-next-page-80")
        
        return iv
    }()
    
    
    
    //MARK: Life Cycles
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        
        addSubview(infoLabel)
        infoLabel.anchor(left: leftAnchor,paddingLeft: 20)
        infoLabel.centerY(inView: self)
        
        addSubview(nextImageView)
        nextImageView.setDimensions(height: 20, width: 20)
        nextImageView.anchor(right : rightAnchor, paddingRight: 20)
        nextImageView.centerY(inView: self)
        
        
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    
    
    //MARK: Helper Functions
}
