//
//  SwiftUIView.swift
//  ManualBarMark4
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct ManualBarMark4: View {
    var body: some View {
        List {
            Chart {
                LineMark(x: .value("Drink", "Mocha"),      y: .value("Serving", 1))
                LineMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 3))
                LineMark(x: .value("Drink", "Latte"),      y: .value("Serving", 2))
            }
            .frame(height: 300)
        }
    }
}

struct ManualBarMark4_Previews: PreviewProvider {
    static var previews: some View {
        ManualBarMark4()
    }
}
