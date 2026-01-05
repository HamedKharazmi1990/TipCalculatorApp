//
//  SinePathView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 04.01.26.
//

import SwiftUI

struct SinePathView: View {
    var body: some View {
        ZStack {
            SineWaveView(
                fillColor: .myDarkGreen.opacity(0.7),
                height: 200
            )
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .top
            )
            
            SineWaveView(
                fillColor: .myDarkGreen.opacity(0.7),
                height: 200
            )
            .rotationEffect(Angle(degrees: 180))
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottom
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SinePathView()
}
