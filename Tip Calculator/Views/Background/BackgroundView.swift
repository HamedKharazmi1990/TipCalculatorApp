//
//  BackgroundView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 04.01.26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color
                .myWhite
                .opacity(0.9)
                .ignoresSafeArea()
            
            SinePathView()
        }
    }
}

#Preview {
    BackgroundView()
}
