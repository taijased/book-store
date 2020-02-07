//
//  AuthViewController.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

final class AuthViewController: UIViewController {
    
    
    
    let privacyPolicyView = PrivacyPolicyView()
    
    let infoLabel: UILabel = {
        let label = UILabel.H5.regular
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "или авторизоваться через"
        label.textColor = UIColor.Gray.primaryLight
        label.textAlignment = .center
        return label
    }()
    
    
    
    var viewModel: AuthViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = AuthViewModel()
        title = "Авторизация"
        setupUI()
    }
    
    fileprivate func setupUI() {
        view.backgroundColor = .white
        
        
        
        guard let viewModel = viewModel else { return }
        view.addSubview(viewModel.login)
        viewModel.login.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewModel.login.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewModel.login.topAnchor.constraint(equalTo: view.topAnchor, constant: 155).isActive = true
        viewModel.login.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(viewModel.password)
        viewModel.password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewModel.password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewModel.password.topAnchor.constraint(equalTo: viewModel.login.bottomAnchor, constant: 12).isActive = true
        viewModel.password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        view.addSubview(viewModel.infoLabel)
        viewModel.infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewModel.infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewModel.infoLabel.topAnchor.constraint(equalTo: viewModel.password.bottomAnchor, constant: 4).isActive = true
        viewModel.infoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(viewModel.enterButton)
        viewModel.enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewModel.enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewModel.enterButton.topAnchor.constraint(equalTo: viewModel.infoLabel.bottomAnchor, constant: 4).isActive = true
        viewModel.enterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        view.addSubview(infoLabel)
        infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        infoLabel.topAnchor.constraint(equalTo: viewModel.enterButton.bottomAnchor, constant: 4).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        view.addSubview(viewModel.socialAuth)
        viewModel.socialAuth.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewModel.socialAuth.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewModel.socialAuth.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 4).isActive = true
        viewModel.socialAuth.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        
        view.addSubview(privacyPolicyView)
        privacyPolicyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        privacyPolicyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        privacyPolicyView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -53).isActive = true
//        privacyPolicyView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    
    
    
    
    // MARK: settings Navigation bar
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}
