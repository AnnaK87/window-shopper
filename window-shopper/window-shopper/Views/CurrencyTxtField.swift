//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Anna Kaukh on 11/17/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2 - size/2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2495451627)
        currencyLbl.textAlignment = .center
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeTxtField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTxtField()
    }
    
    func customizeTxtField() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2495451627)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let placeHolderText = placeholder {
            let atributedText = NSAttributedString(string: placeHolderText, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = atributedText
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
}
