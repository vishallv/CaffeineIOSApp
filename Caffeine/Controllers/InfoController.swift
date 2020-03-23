//
//  InfoController.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/18/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let infoReuseIdentifier = "InforrmationCell"
let headerReuseIdentifier = "headerCell"
class InfoController : UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    //MARK: Properties
    
    var colors : [[Int]] = [[20,136,204,43,50,178],[241,39,17,245,175,25],[17,153,142,56,239,125],[201,75,75,75,19,79],
    [238,9,121,255,106,0]]
    
    
    private let userImage : [UIImage] = [#imageLiteral(resourceName: "drake-getty-bg027"),#imageLiteral(resourceName: "246x0w"),#imageLiteral(resourceName: "offset"),#imageLiteral(resourceName: "dojocat"),#imageLiteral(resourceName: "juju")]
    private let userName: [String] = ["TheBoy","URLTV","OffsetYRn","DojoCat","Juju"]
    private let primaryHeading : [String] = ["Epic rap battle with drake",
                                             "Watch URLTV rap during steam",
                                             "OffSet goes show shopping in NYC",
                                             "DojoCat is going to rave today",
                                             "Watch Juju play with ninja on stream"]
    
    private let backImage : [UIImage] = [#imageLiteral(resourceName: "drake-getty-bg027"),#imageLiteral(resourceName: "urt"),#imageLiteral(resourceName: "maxresdefault"),#imageLiteral(resourceName: "lmdjc.0"),#imageLiteral(resourceName: "ninju")]
    
    
    
    //MARK: Life Cycles
    
    override func viewDidLoad() {
           super.viewDidLoad()
     
        configureUI()
           
       }
    
    //MARK: Selectors
    
    //MARK: Helper Functions

    func configureUI(){
        
        collectionView.backgroundColor = .white
        collectionView.register(InformationCell.self, forCellWithReuseIdentifier: infoReuseIdentifier)
        collectionView.register(InfoHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerReuseIdentifier)
    }
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if section == 0 {
            return CGSize.zero
        }
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: view.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 40
    }
    
    //MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        }
        else {
        return 5
        }
    }
        
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerReuseIdentifier, for: indexPath) as! InfoHeaderCell
        header.dateText = "Tommorow"
        
        
        return header
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: infoReuseIdentifier, for: indexPath) as! InformationCell
        
        if indexPath.section == 0{
        cell.colorArray = colors[indexPath.row]
        }
        else {
            colors.shuffle()
            cell.colorArray = colors[indexPath.row]
        }
        
        cell.profileImage = userImage[indexPath.row]
        cell.nameOfUser = userName[indexPath.row]
        cell.primaryheading = primaryHeading[indexPath.row]
        cell.backgorundImage = backImage[indexPath.row]
        return cell
    }
}
