//
//  SubTotalView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 04.01.26.
//

import SwiftUI

struct SubTotalView: View {
    let title: LocalizedStringKey
    let titleFont: Font
    let amount: String
    let amountFont: Font
    
    var amountAccessibilityId: String? = nil
    
    var body: some View {
        VStack {
            Text(title)
                .font(titleFont)
                .foregroundStyle(.secondary)
            
            Text(amount)
                .font(amountFont)
                .fontWeight(.semibold)
                .foregroundStyle(.myDarkGreen)
                .accessibilityIdentifier(amountAccessibilityId ?? "")
                .accessibilityElement(children: .ignore)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SubTotalView(
        title: "Bill",
        titleFont: .largeTitle,
        amount: "19.99",
        amountFont: .largeTitle
    )
}
