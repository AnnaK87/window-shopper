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
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    @IBOutlet weak var clearBtn: UIButton!
    
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
        if let wageTxt = wageTxt.text, let itemTxt = itemTxt.text {
            if let wage = Double(wageTxt), let item = Double(itemTxt) {
                priceLbl.isHidden = false
                hourLbl.isHidden = false
                clearBtn.isHidden = false
                view.endEditing(true)
                priceLbl.text = "\(Wage.getHours(forWage: wage, andPrice: item))"
                
            } else {
                priceLbl.isHidden = false
                priceLbl.text = "Insert number"
            }
        }
        
    }
    @IBAction func clearBtnPressed(_ sender: Any) {
        priceLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        itemTxt.text = ""
    }
    
}

