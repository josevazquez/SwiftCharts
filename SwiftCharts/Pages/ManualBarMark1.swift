//
//  SwiftUIView.swift
//  ManualBarMark1
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct ManualBarMark1: View {
    var body: some View {
        List {
            Chart {
                BarMark(x: .value("Drink", "Mocha"),      y: .value("Serving", 1))
                BarMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 3))
                BarMark(x: .value("Drink", "Latte"),      y: .value("Serving", 2))
            }
            .frame(height: 300)
        }
    }
}

struct ManualBarMark1_Previews: PreviewProvider {
    static var previews: some View {
        ManualBarMark1()
    }
}
