//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Fragkiskos Katsimpas on 04/03/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {

    func test_fizzBuzz_1() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 1
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("1", result)
    }
    
    func test_fizzBuzz_2() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 2
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("2", result)
    }
    
    func test_fizzBuzz_3() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 3
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("Fizz", result)
    }

    func test_fizzBuzz_multipleOf3() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 2 * 3
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("Fizz", result)
    }
    
    func test_fizzBuzz_5() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 5
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("Buzz", result)
    }
    
    func test_fizzBuzz_multipleOf5() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 2 * 5
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("Buzz", result)
    }
    
    func test_fizzBuzz_multipleOf3AndmultipleOf5() {
        let fizzBuzzCalculator = FizzBuzzCalculator()
        
        let input = 3 * 5
        let result = fizzBuzzCalculator.fizzBuzz(input)
        
        XCTAssertEqual("FizzBuzz", result)
    }
}
