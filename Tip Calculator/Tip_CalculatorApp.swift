//
//  Tip_CalculatorApp.swift
//  Tip Calculator
//
//  Created by Hamed Kharazmi on 03.01.26.
//

import SwiftUI

@main
struct Tip_CalculatorApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    @AppStorage("darkMode") var darkMode: Bool = false
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(
                darkMode: $darkMode,
                language: $language,
                layoutDirectionString: $languageDirectionString
            )
            .environment(\.colorScheme, darkMode ? .dark : .light)
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
        }
    }
}
