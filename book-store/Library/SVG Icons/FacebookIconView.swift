//
//  FacebookIconView.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit


class FacebookIconView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        translatesAutoresizingMaskIntoConstraints = false  
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        FacebookStyleKit.drawFacebook_svg(frame: rect, resizing: .aspectFit)
    }
}


