//
//  WelcomeViewController.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    
    let firstLabel: UILabel = {
        let label = UILabel.H1.bold
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "TTNorms-Bold", size: 113)
        label.text = "Book"
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    let secondLabel: UILabel = {
         let label = UILabel.H1.bold
         label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.Yellow.primary
         label.font = UIFont(name: "TTNorms-Bold", size: 113)
         label.text = "-ing"
         label.textAlignment = .center
         label.numberOfLines = 0
         return label
    }()
    
    
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
        

        
        view.addSubview(firstLabel)
        firstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -18).isActive = true
        firstLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        firstLabel.heightAnchor.constraint(equalToConstant: 133).isActive = true
        
        
        view.addSubview(secondLabel)
        secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -118).isActive = true
        secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: -40).isActive = true
        secondLabel.heightAnchor.constraint(equalToConstant: 133).isActive = true
        
        
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
    
    
    // MARK: settings Navigation bar
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
