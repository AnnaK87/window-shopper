//
//  ViewController.swift
//  window-shopper
//
//  Created by Anna Kaukh on 11/17/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var itemTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 0.6669252997)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateBtn
        itemTxt.inputAccessoryView = calculateBtn

    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func calculate() {
        print("its working")
    }
 
}

