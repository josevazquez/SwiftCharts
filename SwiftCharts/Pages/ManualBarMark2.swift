//
//  SwiftUIView.swift
//  ManualBarMark2
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct ManualBarMark2: View {
    var body: some View {
        List {
            Chart {
                BarMark(x: .value("Serving", 1), y: .value("Drink", "Mocha"))
                BarMark(x: .value("Serving", 3), y: .value("Drink", "Cappuccino"))
                BarMark(x: .value("Serving", 2), y: .value("Drink", "Latte"))
            }
            .frame(height: 300)
        }
    }
}

struct ManualBarMark2_Previews: PreviewProvider {
    static var previews: some View {
        ManualBarMark2()
    }
}
