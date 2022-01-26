//http://codingdojo.org/kata/RomanNumerals/

import Foundation

class RomanNumerals {
    
    func convert(_ number: Int) -> String {
        let arabicNumbersTable = [100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romanNumbersTable = ["C", "XC", "L","XL","X", "IX", "V", "IV", "I"]
        
        var arabic =  number
        var roman = ""

        for i in 0..<arabicNumbersTable.count {
            while arabic >= arabicNumbersTable[i] {
                roman = roman + romanNumbersTable[i]
                arabic = arabic - arabicNumbersTable[i]
            }
        }
        
        return roman
    }
}
