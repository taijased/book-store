//
//  PrivacyPolicyView.swift
//  book-store
//
//  Created by Максим Спиридонов on 07.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import UIKit


final class PrivacyPolicyView: UIView {
    
    let label: UILabel = {
        let label = UILabel.H5.regular
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.Gray.primaryLight
        label.font = UIFont.getTTNormsFont(type: .regular, size: 12)
        label.isUserInteractionEnabled = true
        label.textAlignment = .center
        label.numberOfLines = 0
        
        
        return label
    }()
    
    fileprivate let termText: String = "После авторизации, или регистрации, или использовании приложения в качестве гостя, вы соглашаетесь с Правилами Использования и Политикой Конфиденциальности"
    fileprivate let term: String = "Правилами Использования"
    fileprivate let policy: String = "Политикой Конфиденциальности"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    fileprivate func setupUI() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        label.fillSuperview()
        
        let formattedText = String.format(strings: [term, policy],
                                          boldFont: UIFont.getTTNormsFont(type: .medium, size: 12),
                                          boldColor: UIColor.Primary.primary,
                                          inString: termText,
                                          font: UIFont.getTTNormsFont(type: .regular, size: 12),
                                          color: UIColor.Gray.primaryLight)
        label.attributedText = formattedText
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTermTapped))
        label.addGestureRecognizer(tap)
        
        
        
        
    }
    
    @objc func handleTermTapped(gesture: UITapGestureRecognizer) {
        
        let termString = termText as NSString
        let termRange = termString.range(of: term)
        let policyRange = termString.range(of: policy)
        
        let tapLocation = gesture.location(in: label)
        let index = label.indexOfAttributedTextCharacterAtPoint(point: tapLocation)
        
        if checkRange(termRange, contain: index) == true {
            
           print("term")
            return
        }
        
        if checkRange(policyRange, contain: index) {
            
            print("privacy")
            return
        }
    }
    
    
    func checkRange(_ range: NSRange, contain index: Int) -> Bool {
        return index > range.location && index < range.location + range.length
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}






//MARK: - UILabel
extension UILabel {
    func indexOfAttributedTextCharacterAtPoint(point: CGPoint) -> Int {
        assert(self.attributedText != nil, "This method is developed for attributed string")
        let textStorage = NSTextStorage(attributedString: self.attributedText!)
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        let textContainer = NSTextContainer(size: self.frame.size)
        textContainer.lineFragmentPadding = 0
        textContainer.maximumNumberOfLines = self.numberOfLines
        textContainer.lineBreakMode = self.lineBreakMode
        layoutManager.addTextContainer(textContainer)
        
        let index = layoutManager.characterIndex(for: point, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        return index
    }
}



//MARK: - String
extension String {
    static func format(strings: [String],
                       boldFont: UIFont = UIFont.boldSystemFont(ofSize: 14),
                       boldColor: UIColor = UIColor.blue,
                       inString string: String,
                       font: UIFont = UIFont.systemFont(ofSize: 14),
                       color: UIColor = UIColor.black) -> NSAttributedString {
        let attributedString =
            NSMutableAttributedString(string: string,
                                      attributes: [
                                        NSAttributedString.Key.font: font,
                                        NSAttributedString.Key.foregroundColor: color])
        let boldFontAttribute = [NSAttributedString.Key.font: boldFont, NSAttributedString.Key.foregroundColor: boldColor]
        for bold in strings {
            attributedString.addAttributes(boldFontAttribute, range: (string as NSString).range(of: bold))
        }
        return attributedString
    }
}
