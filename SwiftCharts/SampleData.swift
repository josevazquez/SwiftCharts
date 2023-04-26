//
//  SampleData.swift
//  SwiftCharts
//
//  Created by Jose Vazquez on 4/26/23.
//

import Foundation
import Charts

public func dateOffsetDaysFromToday(offset: Int) -> Date {
    let calendar = Calendar.init(identifier: .gregorian)
    let today = Date()
    var components = calendar.dateComponents([.year, .month, .day], from: today)
    components.day = components.day! - offset
    return components.date!
}

extension Date {
    public init(offsetDaysFromToday offset: Int) {
        self.init(timeIntervalSinceNow: -24 * 60 * 60 * Double(offset))
    }
}

struct SampleData {
    let entries: [Entry]
    
    init(count: Int, min: Double = 5, max: Double = 20, cycles: Double = 1, computation: @escaping (Entry) -> Double = { Double($0.sine + $0.linear) }) {
        let ids = 1...count
        self.entries = ids.map { id in
            let i = Double(id-1)
            let steps = Double(count-1)
            let step = (max-min) / steps
            let tau = 2.0 * Double.pi
            return Entry(id: id,
                         date: Date(offsetDaysFromToday: count - id),
                         sine: (max-min) * (sin(tau*i / steps)+1)/2 + min,
                         romanNumeral: romanNumeral(for: id),
                         linear: (i * step) + min,
                         computation: computation)
        }
    }
    
    struct Entry: Identifiable {
        let id: Int
        let date: Date
        let sine: Double
        let romanNumeral: String
        let linear: Double
        
        var computation: (Entry) -> Double
        var computed: Double { computation(self) }
    }
}
