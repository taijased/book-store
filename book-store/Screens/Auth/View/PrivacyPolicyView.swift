//
//  PrivacyPolicyView.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit


final class PrivacyPolicyView: UIView {
    //
    //    let textView: UITextView = {
    //        let view = UITextView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.textColor = UIColor.Gray.primaryLight
    //        view.font = UIFont.getTTNormsFont(type: .regular, size: 12)
    //        view.text = "После авторизации, или регистрации, или использовании приложения в качестве гостя, вы соглашаетесь с Правилами Использования и Политикой Конфиденциальности"
    //        view.textAlignment = .center
    //        return view
    //    }()
    //
    let label: UILabel = {
        let label = UILabel.H5.regular
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.Gray.primaryLight
        label.font = UIFont.getTTNormsFont(type: .regular, size: 12)
        label.text = "После авторизации, или регистрации, или использовании приложения в качестве гостя, вы соглашаетесь с Правилами Использования и Политикой Конфиденциальности"
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    fileprivate func setupUI() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        label.fillSuperview()
  
        let link = "https://arq.su/privacypolicy"
        
        let text = label.text ?? ""
        let firstString = NSAttributedString.makeHyperlink(for: link, in: text, as: "Политикой Конфиденциальности")

        label.attributedText = firstString
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



extension NSAttributedString {
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString {
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
      
        let attributedString = NSMutableAttributedString(string: string)

        attributedString.addAttribute(.link, value: path, range: substringRange)
        
        return attributedString
    }
}
