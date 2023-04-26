//
//  SampleData.swift
//  SwiftCharts
//
//  Created by Jose Vazquez on 4/26/23.
//

import Foundation
import Charts

struct SampleData {
    let entries: [Entry]
    
    init(count: Int, min: Double = 10, max: Double = 20, cycles: Double = 1, computation: @escaping (Entry) -> Double = { Double($0.id) }) {
        let ids = 1...count
        self.entries = ids.map { id in
            let i = Double(id-1)
            let steps = Double(count-1)
            let step = max-min / steps
            let tau = 2.0 * Double.pi
            return Entry(id: id,
                         sine: sin(tau*i / steps),
                         romanNumeral: romanNumeral(for: id),
                         linear: i * step,
                         computation: computation)
        }
        
    }
    
    struct Entry: Identifiable {
        let id: Int
        let sine: Double
        let romanNumeral: String
        let linear: Double
        
        var computation: (Entry) -> Double
        var computed: Double { computation(self) }
    }
}
