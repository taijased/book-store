//
//  WelcomeViewController.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    fileprivate var enterBtn: UIButton = {
        let button = UIButton.Primary.white
        button.setTitle("Войти", for: .normal)
        button.addTarget(self, action: #selector(enterBtnTapped), for: .touchUpInside)
        
        return button
    }()
    
    
    fileprivate var enterWithoutAuthBtn: UIButton = {
        let button = UIButton.Primary.empty
        button.setTitle("Продолжить без регистрации", for: .normal)
        button.addTarget(self, action: #selector(enterWithoutAuthBtnTapped), for: .touchUpInside)
        return button
    }()
    
    
    @objc fileprivate func enterBtnTapped(_ sender: UIButton) {
        sender.flash()
        print(#function)
    }
    
    
    @objc fileprivate func enterWithoutAuthBtnTapped(_ sender: UIButton) {
        sender.flash()
        print(#function)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    fileprivate func setupUI() {
        view.backgroundColor = UIColor.Primary.primary
        
        
        
        
        view.addSubview(enterBtn)
        enterBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        enterBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        enterBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        enterBtn.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        
        view.addSubview(enterWithoutAuthBtn)
        enterWithoutAuthBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        enterWithoutAuthBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        enterWithoutAuthBtn.topAnchor.constraint(equalTo: enterBtn.bottomAnchor).isActive = true
        enterWithoutAuthBtn.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
    }
}
