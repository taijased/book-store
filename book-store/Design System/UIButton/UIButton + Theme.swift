//
//  UIButton + Theme.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//


import UIKit




protocol PrimaryButton {
    static var primary: UIButton { get }
    static var empty: UIButton { get }
    static var white: UIButton { get }
}


//MARK: - UIColor Theme
extension UIButton {
    
    enum Primary: PrimaryButton {
        
        static let primary: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = false
            button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            button.titleLabel!.font = UIFont.getTTNormsFont(type: TTNorms.medium, size: 14)
            return button
        }()
        static let empty: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = .clear
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = false
            button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            button.titleLabel!.font = UIFont.getTTNormsFont(type: TTNorms.medium, size: 16)
            return button
        }()
        
        
        static let white: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = .white
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = false
            button.setTitleColor(UIColor.Primary.primary, for: .normal)
            button.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            button.titleLabel!.font = UIFont.getTTNormsFont(type: TTNorms.medium, size: 16)
            return button
        }()
        
    }
    
    
}
