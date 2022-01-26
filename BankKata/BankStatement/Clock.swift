//
//  Clock.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class Clock {
    
    private let df = DateFormatter()
    
    func dateToString() -> String {
        df.dateFormat = "dd/MM/yyyy"
        return df.string(from: today())
    }
    
    func today() -> Date {
        return  Date()
    }
}
