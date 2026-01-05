//
//  LanguageOptionsTapView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    @Binding var language : String
    @Binding var layoutDirectionString : String
    var body: some View {
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Spanish") {
                language = "es"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Hebrew") {
                language = "he"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("French") {
                language = "fr"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LanguageOptionsTapView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
