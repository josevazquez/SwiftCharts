//
//  ContentView.swift
//  SwiftCharts
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI

enum Charts: CaseIterable, Identifiable {
    var id: Self { return self }

    case manualBarMark1
    case manualBarMark2
    case manualBarMark3
    case loopedBarMark1
    case manualBarMark4
}

struct ContentView: View {
    @State private var selection: Charts?
    
    var body: some View {
        NavigationSplitView {
            List(Charts.allCases, selection: $selection) { chart in
                Text(verbatim: "\(chart)")
            }
        } detail: {
            switch selection {
            case .manualBarMark1: ManualBarMark1()
            case .manualBarMark2: ManualBarMark2()
            case .manualBarMark3: ManualBarMark3()
            case .loopedBarMark1: LoopedBarMark1(drinks: drinks)
            case .manualBarMark4: ManualBarMark4()
            default:              Text("📊")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
