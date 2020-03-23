//
//  MultiGameCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit
private let SingleGameCellIdentifier = "SingleGameCell"

class MultiGameCell : UICollectionViewCell{
    
    //MARK: Properties
    
    var collectionView : UICollectionView!
    
    private let backgroundImages : [UIImage] = [#imageLiteral(resourceName: "colorgradient_background_12"),#imageLiteral(resourceName: "colorgradient_background_4"),#imageLiteral(resourceName: "colorgradient_background_1"),#imageLiteral(resourceName: "colorgradient_background_10")]
    private let gameImages : [UIImage] = [#imageLiteral(resourceName: "fortnite-1"),#imageLiteral(resourceName: "portal2"),#imageLiteral(resourceName: "monopolyplus"),#imageLiteral(resourceName: "rocket-league")]
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
  
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    func configureCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        
        
        collectionView.register(SingleGameCell.self, forCellWithReuseIdentifier: SingleGameCellIdentifier)
        
        addSubview(collectionView)
        collectionView.anchor(top:topAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor)
        
        
    }
}

extension MultiGameCell : UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width/1.3, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SingleGameCellIdentifier, for: indexPath) as! SingleGameCell
        cell.backgroundImage = backgroundImages[indexPath.row]
        cell.gameImage = gameImages[indexPath.row]
        
        return cell
    }
    
    
}
