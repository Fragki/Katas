//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Fragkiskos Katsimpas on 04/03/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation


// 1. Pattern Matching
class FizzBuzzCalculator {

    public func fizzBuzz(_ input: Int) -> String {

        switch (isDivisibleBy(numerator: input, denominator: 3), isDivisibleBy(numerator: input, denominator: 5)) {
            case (true, true):
                return "FizzBuzz"
            case (true, false):
                return "Fizz"
            case (false, true):
                return "Buzz"
            default:
                return "\(input)"
        }

    }

    private func isDivisibleBy(numerator: Int, denominator: Int) -> Bool {
        return numerator % denominator == 0
    }
}

// 2. String interpolation
//class FizzBuzzCalculator {
//
//    public func fizzBuzz(_ input: Int) -> String {
//
//        var output = ""
//        if isDivisibleBy(numerator: input, denominator: 3) {
//            output = output + "Fizz"
//        }
//        if isDivisibleBy(numerator: input, denominator: 5) {
//            output = output + "Buzz"
//        }
//
//        return output.isEmpty ? "\(input)" : output
//    }
//
//    private func isDivisibleBy(numerator: Int, denominator: Int) -> Bool {
//        return numerator % denominator == 0
//    }
//}

// 3. The Classic way

//class FizzBuzzCalculator {
//
//    public func fizzBuzz(_ input: Int) -> String {
//
//        if isDivisibleBy(numerator: input, denominator: 3) && isDivisibleBy(numerator: input, denominator: 5) {
//            return "FizzBuzz"
//        }
//
//        if isDivisibleBy(numerator: input, denominator: 3) {
//            return "Fizz"
//        }
//        if isDivisibleBy(numerator: input, denominator: 5) {
//            return "Buzz"
//        }
//        return "\(input)"
//    }
//
//    private func isDivisibleBy(numerator: Int, denominator: Int) -> Bool {
//        return numerator % denominator == 0
//    }
//}
