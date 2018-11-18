//
//  Wage.swift
//  window-shopper
//
//  Created by Anna Kaukh on 11/18/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
