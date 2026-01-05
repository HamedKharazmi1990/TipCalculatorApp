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
    
    var body: some View {
        VStack {
            if isPortraitPhone {
                TipCalculatorView()
            } else {
                LandscapeTipCalculatorView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
