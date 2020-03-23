//
//  MainTabController.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/18/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit


class MainTabController : UITabBarController {
    
    
    //MARK: Properties
    
    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        configureNavigationBar()
        configureUI()
        
        configureAllTabControllers()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.title = "Caffeine"
        selectedIndex = 1
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
        

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.title = ""
        
    }
    
    //MARK: Healper Function
    
    func configureAllTabControllers(){
    
        let infoController = InfoController(collectionViewLayout: UICollectionViewFlowLayout())
        infoController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Component 8 – 1").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Component 8 – 2").withRenderingMode(.alwaysOriginal))
        
        let caffeineController = CaffeineController(collectionViewLayout: UICollectionViewFlowLayout())
        caffeineController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Component 6 – 2").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Component 6 – 1").withRenderingMode(.alwaysOriginal))
        
        let settingController = SettingController()
        settingController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "Icon - Account (filled)-1").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "Icon - Account (filled)").withRenderingMode(.alwaysOriginal))
        
        viewControllers = [infoController,caffeineController,settingController]
        tabBar.tintColor = .black
        
        
    }
    
    
//    func configureSingleController(unselectedImage : UIImage, selectedImage : UIImage, rootController : UIViewController = UIViewController()) -> UIViewController{
//
//        let controller = rootController
//        controller.tabBarItem.image = unselectedImage.withRenderingMode(.alwaysOriginal)
//        controller.tabBarItem.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
//
//
//        return controller
//
//    }
    
    func configureUI(){
        view.backgroundColor = .white
        
        
    }
    
    func configureNavigationBar(){
        
        navigationItem.title = "Caffeine"
        
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(leftBarButtonPressed))
        navigationItem.leftBarButtonItem?.tintColor = .gray
        
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "rsz_whatsapp_image_2020-03-18_at_105507_pm").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(rightBarButtonPressed))
        
       
        
    }
    
    
    //MARK: Selector
    
    @objc func leftBarButtonPressed(){
        
        print("leftBarButtonPressed")
        
        navigationController?.pushViewController(SearchController(), animated: true)
        
        
        
        
        
    }
    @objc func rightBarButtonPressed(){
        
        print("rightBarButtonPressed")
    }
}

