//
//  PaymentSummaryView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 04.01.26.
//

import SwiftUI

struct PaymentSummaryView: View {
    let tipPercentage: Int
    let split: Int
    let bill: Double
    
    var tip: Double {
        bill * Double(tipPercentage) / 100.0
    }
    var total: Double {
        bill + tip
    }
    // TODO: Localize...
    func formattedAmount(value: Double, split: Int) -> String {
        let newValue = value / Double(split)
        return "$\(newValue.formatted())"
    }
    
    // TODO: Calculate based on inputs
    var totalPerPerson: String {
        formattedAmount(value: total, split: split)
    }
    var billPerPerson: String {
        formattedAmount(value: bill, split: split)
    }
    var tipPerPerson: String {
        formattedAmount(value: tip, split: split)
    }
    
    // iPad Support
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .largeTitle : .headline
    }
    
    var body: some View {
        GroupBox {
            SubTotalView(
                title: "Total per person",
                titleFont: font,
                amount: totalPerPerson,
                amountFont: font
            )
            .frame(
                maxHeight: .infinity
            )
            
            HStack {
                SubTotalView(
                    title: "Bill",
                    titleFont: font,
                    amount: billPerPerson,
                    amountFont: font
                )
                SubTotalView(
                    title: "Tip",
                    titleFont: font,
                    amount: tipPerPerson,
                    amountFont: font
                )
            }
        } label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding()
        }
        .backgroundStyle(.myLightGreen.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    VStack {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.3))
        PaymentSummaryView(
            tipPercentage: 10,
            split: 2,
            bill: 100
        )
    }.padding()
}
