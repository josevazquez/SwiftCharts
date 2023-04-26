//
//  RomanNumeral.swift
//  SwiftCharts
//
//  Created by Jose Vazquez on 4/26/23.
//

import Foundation

/**
 I asked ChatGPT "write me a function in Swift that takes
 in an int value as an argument and returns a string with
 the roman numeral representation for that value". This is
 the function it came back with
 */
func romanNumeral(for number: Int) -> String {
    guard number > 0 && number < 4000 else {
        return "Invalid number"
    }
    
    let symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    let values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    
    var romanNumeral = ""
    var remainingValue = number
    
    for (index, value) in values.enumerated() {
        let symbol = symbols[index]
        let div = remainingValue / value
        
        if div > 0 {
            for _ in 0..<div {
                romanNumeral.append(symbol)
            }
            remainingValue -= div * value
        }
    }
    
    return romanNumeral
}
