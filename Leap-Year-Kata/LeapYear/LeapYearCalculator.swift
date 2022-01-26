//
//  LeapYearCalculator.swift
//  LeapYear
//
//  Created by Fragkiskos Katsimpas on 22/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class LeapYearCalculator {
    
    func isLeap(year: Int) -> Bool {
        return isDivisible(number: year, by: 4) &&
            !(isDivisible(number: year, by: 100) &&
            !isDivisible(number: year, by: 400))
    }
    
    private func isDivisible(number: Int, by divisor: Int) -> Bool {
        return number % divisor == 0
    }
}
