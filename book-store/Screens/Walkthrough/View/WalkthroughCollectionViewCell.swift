//
//  WalkthroughCollectionViewCell.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit

class WalkthroughCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "WalkthroughCollectionViewCell"
    
    weak var viewModel: WalkthroughCollectionViewCellVMType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            iconImage.set(imageURL: viewModel.iconName)
            label.text = viewModel.label
        }
    }
      
    
    
    let iconImage: WebImageView = {
        let imageView = WebImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    
    
    let wrapperView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel.H4.medium
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayers()
    }
    

    private func setupLayers() {
        backgroundColor = .white
       
        addSubview(label)
        label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -11).isActive = true
        
        
        addSubview(wrapperView)
        wrapperView.fillSuperview()
        
        
        wrapperView.addSubview(iconImage)
        iconImage.trailingAnchor.constraint(equalTo: wrapperView.trailingAnchor, constant: 15).isActive = true
        iconImage.topAnchor.constraint(equalTo: wrapperView.topAnchor, constant: -15).isActive = true
        iconImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        iconImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
          
    }
    
    
    override func prepareForReuse() {
        iconImage.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 10
        layer.shadowRadius = 7
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 0, height: 2)
        wrapperView.layer.masksToBounds = true
        wrapperView.layer.cornerRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
