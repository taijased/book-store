//
//  AuthViewModel.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit


protocol AuthViewModelType {
    
    var login: LoginTextFieldView { get }
    var password: PasswordTextFieldView { get }
    var infoLabel: UILabel { get }
    var enterButton: UIButton { get }
    var socialAuth: SocialControlsView { get }
}

class AuthViewModel: AuthViewModelType {
    var login: LoginTextFieldView = LoginTextFieldView()
    var password: PasswordTextFieldView = PasswordTextFieldView()
    var socialAuth: SocialControlsView = SocialControlsView()
    
    let infoLabel: UILabel = {
        let label = UILabel.H5.regular
        label.textColor = UIColor.Gray.primaryLight
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Введите пароль"
        label.textAlignment = .center
        return label
    }()
    
    
    let enterButton: UIButton = {
        var button = UIButton.Primary.primary
//        button.addTarget(self, action: #selector(enterButtonTapped), for: .touchUpInside)
        button.setTitle("Войти", for: .normal)
        return button
    }()
    
    
    @objc func enterButtonTapped(_ sender: UIButton) {
       sender.flash()
           
    }
    
    
    
    init() {
        
    }
}
