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
    
    @Binding var language : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        NavigationStack {
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
                UIApplication
                    .shared
                    .sendAction(
                        #selector(UIResponder.resignFirstResponder),
                        to: nil,
                        from: nil,
                        for: nil
                    )
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    LanguageOptionsTapView(
                        language: $language,
                        layoutDirectionString: $layoutDirectionString
                    )
                }
            }
        }
    }
}

#Preview {
    TipCalculatorView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
