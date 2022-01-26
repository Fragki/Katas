import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {


    func test_convert_1() {
        let sut = RomanNumerals()
        
        let number = 1
        let result = sut.convert(number)
        
        XCTAssertEqual("I", result)
    }

    func test_convert_2() {
        let sut = RomanNumerals()
        
        let number = 2
        let result = sut.convert(number)
        
        XCTAssertEqual("II", result)
    }
    
    func test_convert_3() {
        let sut = RomanNumerals()
        
        let number = 3
        let result = sut.convert(number)
        
        XCTAssertEqual("III", result)
    }
    
    func test_convert_4() {
        let sut = RomanNumerals()
        
        let number = 4
        let result = sut.convert(number)
        
        XCTAssertEqual("IV", result)
    }
    
    func test_convert_5() {
        let sut = RomanNumerals()
        
        let number = 5
        let result = sut.convert(number)
        
        XCTAssertEqual("V", result)
    }
    
    func test_convert_6() {
        let sut = RomanNumerals()
        
        let number = 6
        let result = sut.convert(number)
        
        XCTAssertEqual("VI", result)
    }
    
    func test_convert_9() {
        let sut = RomanNumerals()
        
        let number = 9
        let result = sut.convert(number)
        
        XCTAssertEqual("IX", result)
    }
    
    func test_convert_10() {
        let sut = RomanNumerals()
        
        let number = 10
        let result = sut.convert(number)
        
        XCTAssertEqual("X", result)
    }
    
    func test_convert_20() {
        let sut = RomanNumerals()
        
        let number = 20
        let result = sut.convert(number)
        
        XCTAssertEqual("XX", result)
    }
    
    func test_convert_40() {
        let sut = RomanNumerals()
        
        let number = 40
        let result = sut.convert(number)
        
        XCTAssertEqual("XL", result)
    }
    
    func test_convert_50() {
        let sut = RomanNumerals()
        
        let number = 50
        let result = sut.convert(number)
        
        XCTAssertEqual("L", result)
    }
    
    func test_convert_90() {
        let sut = RomanNumerals()
        
        let number = 90
        let result = sut.convert(number)
        
        XCTAssertEqual("XC", result)
    }
    
    func test_convert_100() {
        let sut = RomanNumerals()
        
        let number = 100
        let result = sut.convert(number)
        
        XCTAssertEqual("C", result)
    }
}
