//
//  CaffeineStreamCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

private let gamerVideoCellIdentifier = "GamerVideoCell"

class CaffeineStreamCell : UICollectionViewCell,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    
    
    
    //MARK: Properties
    
    private var collectionView : UICollectionView!
    
    private let sessionLabel : UILabel = {
        let label = UILabel().createLabel(textValue: "Featured", textSize: 30, font: .heavy)
        label.textColor = .black
        return label
    }()
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(sessionLabel)
        sessionLabel.anchor(top:topAnchor,left: leftAnchor,
                            paddingTop: 30,paddingLeft: 20)
        
        configureCollectionView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    func configureCollectionView(){
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.isScrollEnabled = false
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        addSubview(collectionView)
        collectionView.anchor(top: sessionLabel.bottomAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor,
                              paddingTop: 10)
        
        collectionView.register(GamerVideoCell.self, forCellWithReuseIdentifier: gamerVideoCellIdentifier)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gamerVideoCellIdentifier, for: indexPath)
        return cell
    }
    
}
