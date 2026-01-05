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
    
    @Binding var darkMode : Bool
    
    @Binding var language : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack() {
                HStack {
                    Spacer()
                    TitleView()
                    Spacer()
                    SettingView(
                        language: $language,
                        layoutDirectionString: $layoutDirectionString,
                        darkMode: $darkMode
                    )
                }
                
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
                    PaymentSummaryView(
                        tipModel: tipModel
                    )
                    
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            UIApplication
                .shared
                .sendAction(
                    #selector(UIResponder.resignFirstResponder),
                    to: nil,
                    from: nil,
                    for: nil
                )
        }
    }
}

#Preview {
    TipCalculatorView(darkMode: .constant(false), language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
