//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 03.01.26.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    @Binding var language : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        VStack {
            if isIPad || isPortraitPhone {
                TipCalculatorView(
                    language: $language,
                    layoutDirectionString: $layoutDirectionString
                )
            } else {
                LandscapeTipCalculatorView(
                    language: $language,
                    layoutDirectionString: $layoutDirectionString
                )
            }
        }
        .padding()
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
