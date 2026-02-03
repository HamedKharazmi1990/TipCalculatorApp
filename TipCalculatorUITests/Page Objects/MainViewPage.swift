//
//  MainViewPage.swift
//  TipCalculatorUITests
//
//  Created by Hamed Kharazmi on 03.02.26.
//

import Foundation
import XCTest

class MainViewPage {
    
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var totalTextField: XCUIElement {
        app.textFields["totalAmountText"]
    }
    
    var addSplitButton: XCUIElement {
        app.buttons["addSplitButton"]
    }
    
    var totalPerPersonAmountText: XCUIElement {
        app.staticTexts["totalPerPersonAmountText"]
    }
    
    var billAmountText: XCUIElement {
        app.staticTexts["billAmountText"]
    }
    
    var tipAmountText: XCUIElement {
        app.staticTexts["tipAmountText"]
    }
}
