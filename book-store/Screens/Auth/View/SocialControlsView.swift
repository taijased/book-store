//
//  SocialControlsView.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit


protocol SocialControlsViewDelegate: class {
    
}


final class SocialControlsView: UIView {
    
    weak var delegate: SocialControlsViewDelegate?
    
    
    
    let view: UIView = {
        let view  = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    
    let fb: UIButton = {
        let button = UIButton.Social.facebook
        button.addTarget(self, action: #selector(fbTapped), for: .touchUpInside)
        return button
    }()
    
    let vk: UIButton = {
        let button = UIButton.Social.vk
        button.addTarget(self, action: #selector(vkTapped), for: .touchUpInside)
        return button
    }()
    
    let twitter: UIButton = {
        let button = UIButton.Social.twitter
        button.addTarget(self, action: #selector(twitterTapped), for: .touchUpInside)
        return button
    }()
    let apple: UIButton = {
        let button = UIButton.Social.apple
        button.addTarget(self, action: #selector(appleTapped), for: .touchUpInside)
        return button
    }()
    
    
    @objc func appleTapped(_ sender: UIButton) {
        sender.flash()
        
        
    }
    
    
    
    @objc func twitterTapped(_ sender: UIButton) {
        sender.flash()
        
        
    }
    
    
    @objc func fbTapped(_ sender: UIButton) {
        sender.flash()
        
        
    }
    
    
    @objc func vkTapped(_ sender: UIButton) {
        sender.flash()
        
        
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUI() {
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        view.fillSuperview()
        
        
        
        
        
        view.addSubview(twitter)
        twitter.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 29).isActive = true
        twitter.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        twitter.heightAnchor.constraint(equalToConstant: 50).isActive = true
        twitter.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(vk)
        vk.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -29).isActive = true
        vk.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vk.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vk.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        view.addSubview(apple)
        apple.leadingAnchor.constraint(equalTo: twitter.trailingAnchor, constant: 8).isActive = true
        apple.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        apple.heightAnchor.constraint(equalToConstant: 50).isActive = true
        apple.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(fb)
        fb.trailingAnchor.constraint(equalTo: vk.leadingAnchor, constant: -8).isActive = true
        fb.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        fb.heightAnchor.constraint(equalToConstant: 50).isActive = true
        fb.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
}
