//
//  SwiftUIView.swift
//  SampleData2
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct SampleData2: View {
    let sampleDataWeek = SampleData(count: 7, min: 750_000, max: 850_000)
    let sampleDataMonth = SampleData(count: 30, min: 750_000, max: 850_000)
    let sampleDataQuarter = SampleData(count: 90, min: 750_000, max: 850_000)
    var body: some View {
        List {
            Section {
                Text("Week")
                Chart(sampleDataWeek.entries) { entry in
                    LineMark(x: .value("Index", entry.date),
                             y: .value("Value", entry.sine))
                }
            }
            .chartXAxis {
                AxisMarks(values: .stride(by: .day)) { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel(format: .dateTime.weekday(.abbreviated))
                }
            }
            
            Section {
                Text("Month")
                Chart(sampleDataMonth.entries) { entry in
                    LineMark(x: .value("Index", entry.date),
                             y: .value("Value", entry.linear))
                }
            }
            Section {
                Text("Quarter")
                Chart(sampleDataQuarter.entries) { entry in
                    LineMark(x: .value("Index", entry.date),
                             y: .value("Value", entry.sine))
                }
            }
        }
        .chartYScale(domain: 700_000...900_000)
        .chartYAxis {
            AxisMarks { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel("\(value.as(Double.self)!.currencyStringInUSDdroppingCents())")
            }
        }
    }
}

struct SampleData2_Previews: PreviewProvider {
    static var previews: some View {
        SampleData2()
    }
}
