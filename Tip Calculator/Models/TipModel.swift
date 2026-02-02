//
//  TipModel.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 04.01.26.
//

import Foundation

struct TipModel: Identifiable {
    let id = UUID()
    
    var tipPercentage: Int
    var split: Int
    var bill: Double
    
//    var formatter: NumberFormatter
    
    var tip: Double {
        bill * Double(tipPercentage) / 100.0
    }
    var total: Double {
        bill + tip
    }
    
    var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    private func formattedAmount(value: Double, split: Int) -> String {
        let newValue = value / Double(split)
        return formatter
            .string(from: NSNumber(value: newValue)) ?? "$0"
    }
    
    var totalPerPerson: String {
        formattedAmount(value: total, split: split)
    }
    var billPerPerson: String {
        formattedAmount(value: bill, split: split)
    }
    var tipPerPerson: String {
        formattedAmount(value: tip, split: split)
    }
}
