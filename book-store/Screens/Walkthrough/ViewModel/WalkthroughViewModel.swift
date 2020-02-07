//
//  WalkthroughViewModel.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

protocol WalkthroughViewModelType {
    
    var collectionView: WalkthroughCollectionView { get }
    var pageControl: QuadPageControl { get }
    
}
final class WalkthroughViewModel: WalkthroughViewModelType {
    
    var collectionView: WalkthroughCollectionView
    
    let pageControl: QuadPageControl = {
        let control = QuadPageControl()
        control.translatesAutoresizingMaskIntoConstraints = false
        control.currentPageIndicatorTintColor = UIColor.Primary.primary
        control.pageIndicatorTintColor = UIColor.lightGray.withAlphaComponent(0.8)
        return control
    }()
    
    
    init() {
        
        collectionView = WalkthroughCollectionView()
        
    
       
        setupPageControl()
        
    }
    
    fileprivate func setupPageControl() {
        pageControl.numberOfPages = 4
    }
    
}

