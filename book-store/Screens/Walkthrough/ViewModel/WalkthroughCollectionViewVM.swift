//
//  WalkthroughCollectionViewVM.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//


import UIKit


protocol WalkthroughCollectionViewVMType {
    var minimumInteritemSpacingForSectionAt: CGFloat { get }
    var minimumLineSpacingForSectionAt: CGFloat { get }
    func sizeForItemAt() -> CGSize
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> WalkthroughCollectionViewCellVMType?
    var onReloadData: (() -> Void)? { get set }
}

class WalkthroughCollectionViewVM: WalkthroughCollectionViewVMType {
    
    
    
    var onReloadData: (() -> Void)?
    var minimumInteritemSpacingForSectionAt: CGFloat = 20.0
    var minimumLineSpacingForSectionAt: CGFloat = 20.0
    var cells: [WalkthroughElementModel]?
    
    init() {
        cells = [
            WalkthroughElementModel(label: "Все для чтения", desciption: "Все любят читать книги", iconName: "https://cleverics.ru/images/books.jpg"),
            WalkthroughElementModel(label: "Все для чтения", desciption: "Все любят читать книги", iconName: "https://cleverics.ru/images/books.jpg"),
            WalkthroughElementModel(label: "Все для чтения", desciption: "Все любят читать книги", iconName: "https://cleverics.ru/images/books.jpg"),
            WalkthroughElementModel(label: "Все для чтения", desciption: "Все любят читать книги", iconName: "https://cleverics.ru/images/books.jpg"),
        ]
    }
    
    
    func sizeForItemAt() -> CGSize {
        return CGSize(width: 160, height: 100)
    }
    
    
    func numberOfRows() -> Int {
        
        return cells?.count ?? 0
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> WalkthroughCollectionViewCellVMType? {
        guard let cells = cells else { return nil }
        let cell = cells[indexPath.row]
        return WalkthroughCollectionViewCellVM(cell: cell)
    }
    
 
    
    
}
