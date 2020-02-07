//
//  WalkthroughViewController.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {
    
    
    
    
    fileprivate let bgFirstLayer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    fileprivate let bgSecondLayer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        view.layer.shadowOffset = CGSize(width: 5.0, height: 2.0)
        view.layer.shadowRadius = 20
        view.layer.shadowOpacity = 1.0
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    var viewModel: WalkthroughViewModelType?
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        viewModel = WalkthroughViewModel()
        
        setupUI()
    }
    
    fileprivate func setupUI() {
        
        
        
        view.backgroundColor = UIColor.Primary.primary
        view.addSubview(bgFirstLayer)
        bgFirstLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        bgFirstLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bgFirstLayer.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        bgFirstLayer.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        
        
        guard let viewModel = viewModel else { return }
        bgFirstLayer.addSubview(viewModel.collectionView)
        viewModel.collectionView.trailingAnchor.constraint(equalTo: bgFirstLayer.trailingAnchor, constant: 20).isActive = true
        viewModel.collectionView.leadingAnchor.constraint(equalTo: bgFirstLayer.leadingAnchor).isActive = true
        viewModel.collectionView.topAnchor.constraint(equalTo: bgFirstLayer.topAnchor, constant: 20).isActive = true
        viewModel.collectionView.bottomAnchor.constraint(equalTo: bgFirstLayer.bottomAnchor, constant: -100).isActive = true
        
        
        
        view.addSubview(viewModel.pageControl)
          
        viewModel.pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewModel.pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewModel.pageControl.bottomAnchor.constraint(equalTo: bgFirstLayer.bottomAnchor, constant: -62).isActive = true
        viewModel.pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewModel.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        view.addSubview(bgSecondLayer)
        bgSecondLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -25).isActive = true
        bgSecondLayer.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        bgSecondLayer.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        bgSecondLayer.widthAnchor.constraint(equalToConstant:40).isActive = true
        
        
        
        
        
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
