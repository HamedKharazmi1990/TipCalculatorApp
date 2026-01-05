//
//  SettingView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct SettingView: View {
    @Binding var language : String
    @Binding var layoutDirectionString : String
    @Binding var darkMode : Bool
    
    var body: some View {
        SettingsTapView(
            language: $language,
            layoutDirectionString: $layoutDirectionString,
            darkMode: $darkMode
        )
    }
}

#Preview {
    SettingView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT),
        darkMode: .constant(false)
    )
}
