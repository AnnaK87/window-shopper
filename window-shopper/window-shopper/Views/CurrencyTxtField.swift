//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Anna Kaukh on 11/17/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2495451627)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let placeHolderText = placeholder {
            let atributedText = NSAttributedString(string: placeHolderText, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = atributedText
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
 
    
    
}
