//
//  extensions.swift
//  Caffeine
//
//  Created by Vishal Lakshminarayanappa on 3/19/20.
//  Copyright © 2020 Vishal Lakshminarayanappa. All rights reserved.
//

import UIKit


extension UIColor {
    
    static func rgb(red : CGFloat, green: CGFloat, blue : CGFloat ,alpha : CGFloat) -> UIColor {
     
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
        
    }
}
extension UIView {
    
    
    
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat = 0,
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left{
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let right = right{
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if let width = width{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height{
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
    func centerX(inView view : UIView){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func centerY(inView view : UIView,constant : CGFloat = 0,leftAnchor: NSLayoutXAxisAnchor? = nil ,paddingLeft : CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: constant).isActive = true
        
        if let left = leftAnchor {
            anchor(left: left, paddingLeft: paddingLeft)
        }
    }
    
    func setDimensions(height:CGFloat,width : CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    
    func setGrdientBackGround(colorOne : UIColor, colorTwo : UIColor,width : CGFloat){

        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: width, height: 300)
        gradient.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradient.locations = [0.0,1.0]
//        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
//        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
//        gradient.isHidden = false
//        gradient.masksToBounds = true

        layer.insertSublayer(gradient, at: 0)
//        layer.addSublayer(gradient)
        
    }
    
    func createProfileImageView(image : UIImage,check : Bool = true) -> UIImageView {
        
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = image
        if check{
        iv.layer.cornerRadius = 40/2
        }
        return iv
    }
}

extension UILabel {
    
    func createFollowLabel(placeholder : String) -> UILabel{
        let label = UILabel()
        
        label.numberOfLines = 0
        label.textAlignment = .center
        let attributeString = NSMutableAttributedString(string: "0\n", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 30, weight: .medium)])
        attributeString.append(NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)]))
        
        label.attributedText = attributeString
        
        return label
    }
    
    
    func createLabel(textValue : String,textSize: CGFloat, font : UIFont.Weight,isTrue : Bool = false) -> UILabel{
        
        
        let label = UILabel()
        label.text = textValue
        label.textColor = .white
        if isTrue{
        label.backgroundColor = .black
        label.textAlignment = .center
        }
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: textSize, weight: font)
        
        
        return label
        
        
        
    }
}
