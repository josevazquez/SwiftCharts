//
//  SwiftUIView.swift
//  SampleData4
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct SampleData4: View {
    let sampleData = SampleData(count: 5)
    var body: some View {
        List {
            Section {
                Text("ID v Sine")
                Chart(sampleData.entries) { entry in
                    LineMark(x: .value("Index", entry.id),
                             y: .value("Value", entry.sine))
                }
            }
            Section {
                Text("Roman Numeral v Linear")
                Chart(sampleData.entries) { entry in
                    LineMark(x: .value("Index", entry.romanNumeral),
                             y: .value("Value", entry.linear))
                }
            }
            Section {
                Text("Date v Computed")
                Chart(sampleData.entries) { entry in
                    LineMark(x: .value("Index", entry.date),
                             y: .value("Value", entry.computed))
                }
            }
        }
    }
}

struct SampleData4_Previews: PreviewProvider {
    static var previews: some View {
        SampleData4()
    }
}
