//
//  CurrencyFormat.swift
//  SwiftCharts
//
//  Created by Jose Vazquez on 4/26/23.
//

import Foundation

public extension Double {
    
    func processedCurrencyString(_ value: NSNumber, _ formatter: NumberFormatter, postfix: String = "", negative: Bool = false) -> String {
        // We'll force unwrap with the !, if you've got defined data you may need more error checking
        var string = "\(formatter.string(from: value)!)\(postfix)"
        // surround negative values in parentheses
        if negative {
            string = "(\(string))"
        }
        return string
    }


    
    func currencyFormatterThousands(_ currencyCode: String?) -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        if let code = currencyCode {
            formatter.numberStyle = .currency
            formatter.locale = Locale.current
            formatter.currencyCode = code
        }
        formatter.maximumFractionDigits = 0
        
        return formatter
    }
    func currencyStringThousands(_ currencyCode: String? = nil, negative: Bool = false) -> String {
        let value = NSNumber(value: (self/1e3).rounded(.towardZero))
        let formatter = currencyFormatterThousands(currencyCode)
        return processedCurrencyString(value, formatter, postfix: "k", negative: negative)
    }
        
    func currencyStringInUSDdroppingCents(negative: Bool = false) -> String {
        let defaultCurrency = "USD"
        return currencyStringThousands(defaultCurrency, negative: negative)
    }
}
