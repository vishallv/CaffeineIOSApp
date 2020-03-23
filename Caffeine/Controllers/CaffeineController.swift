//
//  CaffeineController.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/18/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit

let topcellIdentifier = "CaffeineTopCell"
let celebCellIdentifier = "celebCell"
let caffieneCellIdentifier = "CaffeineStreamCell"
let CaffeineFooterCellIdentifier = "CaffeineFooterCell"
private let multiGameCellIdentifier = "MultiGameCell"

class CaffeineController : UICollectionViewController ,UICollectionViewDelegateFlowLayout {

    
    //MARK: Properties
    

    
    //MARK: Life Cycles
    
    override func viewDidLoad() {
           super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        
        
        collectionView.register(CaffeineTopCell.self, forCellWithReuseIdentifier: topcellIdentifier)
        collectionView.register(CelebCell.self, forCellWithReuseIdentifier: celebCellIdentifier)
        collectionView.register(CaffeineStreamCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: caffieneCellIdentifier)
        
        collectionView.register(CaffeineFooterCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: CaffeineFooterCellIdentifier)
     

        collectionView.register(MultiGameCell.self, forCellWithReuseIdentifier: multiGameCellIdentifier)
        
//        collectionView.dataSource = self
           
       }
    
    //MARK: Selectors
    
    //MARK: Helper Functions
    
  
    
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader{

            let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: caffieneCellIdentifier, for: indexPath) as! CaffeineStreamCell
            return cell
        }
        
        if kind == UICollectionView.elementKindSectionFooter {
            
            let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CaffeineFooterCellIdentifier, for: indexPath) as! CaffeineFooterCell
            
            return cell
        }

        return UICollectionReusableView()
//        return fatalError()
    }
    
    //MARK: UICollectionView HEADER
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if section == 0 || section == 1{
            return CGSize.zero
        }
        
        return CGSize(width: view.frame.width, height: 900)
        
    }
    
    
    //MARK: UICollectionView Footer
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        if section == 0 || section == 1{
            return CGSize.zero
        }
        return CGSize(width: view.frame.width, height: 300)
    }
    
    //MARK: UICollectionView Main Function
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if section == 0{
            return UIEdgeInsets.zero
        
        }
        
        return UIEdgeInsets(top: 40.0, left: 0.0, bottom: 10.0, right: 0.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0{
            
            return CGSize(width: view.frame.width, height: 588)
            
            
        }
        if indexPath.section == 1{
            
             return CGSize(width: view.frame.width, height: 280)
        }
        
        return CGSize(width: view.frame.width, height: 180)
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 40.0
    }
    
    
//    MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 || section == 1{
        return 1
        }
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        if indexPath.section == 0{
            
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topcellIdentifier, for: indexPath) as!  CaffeineTopCell
            
            return cell
        }
        
        if indexPath.section == 1{
            
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celebCellIdentifier, for: indexPath) as!  CelebCell
            
            return cell
        }
        

        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: multiGameCellIdentifier, for: indexPath)

        cell.backgroundColor = .red

        return cell
    }
    
    
}


