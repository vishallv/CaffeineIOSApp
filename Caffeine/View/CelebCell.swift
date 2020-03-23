//
//  CelebCell.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/22/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let nestReuseidentifier = "nestCell"

class CelebCell: UICollectionViewCell,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    
    
    
    
    
    //MARK: Properties
    
    private var starImages : [UIImage] = [#imageLiteral(resourceName: "drake-getty-bg027"),#imageLiteral(resourceName: "246x0w"),#imageLiteral(resourceName: "offset"),#imageLiteral(resourceName: "dojocat"),#imageLiteral(resourceName: "ohm"),#imageLiteral(resourceName: "ronnie")]
    private var gradientArray : [[Int]] = [[17,211,202,22,132,231],[210,35,208,203,14,91],[89,56,217,169,16,166],
                                   [254,183,5,244,61,5],[17,211,202,22,132,231],[209,35,216,202,15,89]]
    
    private var userName:[String] = ["TheBoy","URLTV","OffsetYRN","DojoCat","Ohmwrecker","Ronnie2K"]
    private var firsName:[String] = ["Drake","Ultimate Rap League","Offset","DojoCat","Ohmwrecker","Ronnie Singh"]
    
    
    
    private var collectionView : UICollectionView!
    
    private let celebLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Stars to follow"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        return label
    }()
    
    //MARK: Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .gray
        addSubview(celebLabel)
        celebLabel.anchor(top:topAnchor,left: leftAnchor,
                          paddingLeft: 20)
        
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
    
    
    func configureCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(StarCell.self, forCellWithReuseIdentifier: nestReuseidentifier)
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 10)
        addSubview(collectionView)
        collectionView.anchor(top:celebLabel.bottomAnchor,left: leftAnchor,bottom: bottomAnchor,right: rightAnchor,
                              paddingTop: 15)
        
        
        
    }
    
    
    
    //MARK: UIcollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gradientArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nestReuseidentifier, for: indexPath) as! StarCell

        cell.setGradientColor = gradientArray[indexPath.row]
        cell.userName = userName[indexPath.row]
        cell.firstName = firsName[indexPath.row]
        cell.profileImage = starImages[indexPath.row]
        
        return cell
        
    }
    
    
}
