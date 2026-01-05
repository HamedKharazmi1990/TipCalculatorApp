//
//  TipCalculatorView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 03.01.26.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var tipModel: TipModel = TipModel(
        tipPercentage: 20,
        split: 1,
        bill: 0.0
    )
    
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack() {
                TitleView()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    EnterTotalView(
                        bill: $tipModel.bill,
                        isFocused: $isFocused
                    )
                    
                    ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                }
                SplitView(
                    split: $tipModel.split,
                    alignment: .leading
                )
                
                Spacer()
                
                // Payment Summary
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                    
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            // TODO: Implement tap outside of text field
            print("Implement tap outside of text field")
        }
    }
}

#Preview {
    TipCalculatorView()
}
