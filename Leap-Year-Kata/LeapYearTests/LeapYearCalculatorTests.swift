//
//  LeapYearCalculatorTests.swift
//  LeapYearTests
//
//  Created by Fragkiskos Katsimpas on 22/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import LeapYear

class LeapYearCalculatorTests: XCTestCase {

    func test_isLeap_whenNotDivisibleBy4_false() {
        let sut = LeapYearCalculator()
        
        let result = sut.isLeap(year: 2001)
        
        XCTAssertFalse(result)
    }

    func test_isLeap_whenDivisibleBy4_true() {
        let sut = LeapYearCalculator()
        
        let result = sut.isLeap(year: 2004)
        
        XCTAssertTrue(result)
    }

    func test_isLeap_whenDivisibleBy4And100_false() {
        let sut = LeapYearCalculator()
        
        let result = sut.isLeap(year: 1900)
        
        XCTAssertFalse(result)
    }
    
    func test_isLeap_whenDivisibleBy4And100And400_true() {
        let sut = LeapYearCalculator()
        
        let result = sut.isLeap(year: 2000)
        
        XCTAssertTrue(result)
    }
}
