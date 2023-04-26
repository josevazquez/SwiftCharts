//
//  SwiftUIView.swift
//  ManualBarMark3
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

let f = 0.9
extension Color {
    public static let espresso: Color = Color(red: 0.235, green: 0.198, blue: 0.172)
    public static let steamMilk: Color = Color(red: 0.980, green: 0.930, blue: 0.792)
    public static let foamMilk: Color = Color(red: 0.925, green: 0.914, blue: 0.910)
    public static let hotChocolate: Color = Color(red: 0.470, green: 0.396, blue: 0.345)
}

struct ManualBarMark3: View {
    var body: some View {
        List {
            Chart {
                BarMark(x: .value("Drink", "Mocha"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Espresso"))
                BarMark(x: .value("Drink", "Mocha"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Steam Milk"))
                BarMark(x: .value("Drink", "Mocha"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Foam Milk"))
                
                BarMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Espresso"))
                BarMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Steam Milk"))
                BarMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Foam Milk"))
                BarMark(x: .value("Drink", "Cappuccino"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Hot Chocolate"))
                
                BarMark(x: .value("Drink", "Latte"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Espresso"))
                BarMark(x: .value("Drink", "Latte"), y: .value("Serving", 2))
                    .foregroundStyle(by: .value("Ingredient", "Steam Milk"))
                BarMark(x: .value("Drink", "Latte"), y: .value("Serving", 1))
                    .foregroundStyle(by: .value("Ingredient", "Foam Milk"))
            }
            .chartForegroundStyleScale([
                "Espresso": Color.espresso, "Steam Milk": Color.steamMilk,
                "Foam Milk": Color.foamMilk, "Hot Chocolate": Color.hotChocolate
            ])
            .frame(height: 300)
        }
    }
}

struct ManualBarMark3_Previews: PreviewProvider {
    static var previews: some View {
        ManualBarMark3()
    }
}
