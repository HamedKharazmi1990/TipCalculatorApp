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
    
    var body: some View {
        LanguageOptionsTapView(
            language: $language,
            layoutDirectionString: $layoutDirectionString
        )
    }
}

#Preview {
    SettingView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
