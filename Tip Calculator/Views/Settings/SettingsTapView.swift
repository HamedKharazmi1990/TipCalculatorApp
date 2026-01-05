//
//  LanguageOptionsTapView.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct SettingsTapView: View {
    @Binding var language : String
    @Binding var layoutDirectionString : String
    @Binding var darkMode : Bool
    var body: some View {
        Menu() {
            Menu("Change Language") {
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
            }
            Section("Mode") {
                Toggle("Dark Mode", isOn: $darkMode)
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    SettingsTapView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT), darkMode: .constant(false))
}
