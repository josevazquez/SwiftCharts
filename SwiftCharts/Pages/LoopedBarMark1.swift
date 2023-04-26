//
//  SwiftUIView.swift
//  LoopedBarMark1
//
//  Created by Jose Vazquez on 4/8/23.
//

import SwiftUI
import Charts

struct Ingredient: Identifiable {
    let name: String
    let serving: Double
    var id: String { name }
    
    init(_ name: String, _ serving: Double) {
        self.name = name
        self.serving = serving
    }
}

struct Drink {
    let name: String
    let ingredients: [Ingredient]
}

let drinks = [
    Drink(name: "Cappuccino", ingredients: [Ingredient("Espresso", 1),
                                            Ingredient("Steam Milk", 1),
                                            Ingredient("Foam Milk", 1)]),

    Drink(name: "Mocha",      ingredients: [Ingredient("Espresso", 1),
                                            Ingredient("Steam Milk", 1),
                                            Ingredient("Foam Milk", 1),
                                            Ingredient("Hot Chocolate", 1)]),

    Drink(name: "Latte",      ingredients: [Ingredient("Espresso", 1),
                                            Ingredient("Steam Milk", 2),
                                            Ingredient("Foam Milk", 1)]),
]

struct LoopedBarMark1: View {
    var drinks: [Drink]
    var body: some View {
        List {
            Chart {
                ForEach(drinks, id: \.name) { drink in
                    ForEach(drink.ingredients) { ingredient in
                        BarMark(x: .value("Drink", drink.name),
                                y: .value("Serving", ingredient.serving))
                        .foregroundStyle(by: .value("Ingredient", ingredient.name))
                    }
                }
            }
            .chartForegroundStyleScale([
                "Espresso": Color.espresso, "Steam Milk": Color.steamMilk,
                "Foam Milk": Color.foamMilk, "Hot Chocolate": Color.hotChocolate
            ])
            .frame(height: 300)
        }
    }
}

struct LoopedBarMark1_Previews: PreviewProvider {
    static var previews: some View {
        LoopedBarMark1(drinks: drinks)
    }
}
