//
//  WalkthroughCollectionView.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//


import UIKit



class WalkthroughCollectionView: UICollectionView {
    
    
    var viewModel: WalkthroughCollectionViewVMType?
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        viewModel = WalkthroughCollectionViewVM()
        setupCollectionSettings()
    }
    
    
    private func setupCollectionSettings() {
        backgroundColor = .random()
        delegate = self
        dataSource = self
        register(WalkthroughCollectionViewCell.self, forCellWithReuseIdentifier: WalkthroughCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        isPagingEnabled = true
        decelerationRate = .fast
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension WalkthroughCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: WalkthroughCollectionViewCell.reuseId, for: indexPath) as? WalkthroughCollectionViewCell
        
        guard let collectionViewCell = cell, let viewModel = viewModel else { return UICollectionViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        collectionViewCell.viewModel = cellViewModel
        
        return collectionViewCell
    }
    
    
    
    // скороллинг по одной карточке ???
//    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        targetContentOffset.pointee = scrollView.contentOffset
//        var indexes = indexPathsForVisibleItems
//        indexes.sort()
//        var index = indexes.first!
//        let cell = cellForItem(at: index)!
//        let position = contentOffset.x - cell.frame.origin.x
//        if position > cell.frame.size.width / 2 {
//            index.row = index.row + 1
//        }
//        scrollToItem(at: index, at: .left, animated: true )
//    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension WalkthroughCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return viewModel?.sizeForItemAt() ?? CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return viewModel?.minimumInteritemSpacingForSectionAt ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return viewModel?.minimumLineSpacingForSectionAt ?? 0
    }
    
}
