//
//  WalkthroughCollectionViewCellVM.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import Foundation


protocol WalkthroughCollectionViewCellVMType: class {
    var label: String { get }
    var description: String { get }
    var iconName: String { get }
}

class WalkthroughCollectionViewCellVM: WalkthroughCollectionViewCellVMType {
    
    private var cell: WalkthroughElementModel
    
    
    var label: String {
        return cell.label
    }
    var description: String {
        return cell.desciption
    }
    
    var iconName: String {
        return cell.iconName
    }
    
    init(cell: WalkthroughElementModel) {
        
        self.cell = cell
        
    }
}
