//
//  TipCalculatorUITests.swift
//  TipCalculatorUITests
//
//  Created by Hamed Kharazmi on 02.02.26.
//

import XCTest

final class TipCalculatorUITests: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launchArguments += ["-uiTest_USLocale"]
        app.launch()
    }

    func test_should_make_sure_that_the_total_text_field_contains_default_value() {
        
        let totalTextField = app.textFields["totalAmountText"]
        XCTAssertEqual(totalTextField.value as! String, "$0.00")
    }
    
}

final class when_user_enter_total_amount: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launchArguments += ["-uiTest_USLocale"]
        app.launch()
        
        let totalTextField = app.textFields["totalAmountText"]
        totalTextField.tap()
        let current = totalTextField.value as? String ?? ""
        totalTextField.typeText(String(repeating: XCUIKeyboardKey.delete.rawValue, count: current.count))
        totalTextField.typeText("$100.00")
        
        app.tap()
        sleep(1)
        
        let addSplitText = app.buttons["addSplitText"]
        addSplitText.tap()
    }
    
    func test_should_make_sure_that_total_per_person_is_displayed_on_screen() {
        
        let totalPerPersonText = app.staticTexts["totalPerPersonAmountText"]
        let _ = totalPerPersonText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(totalPerPersonText.label, "$60.00")
    }
    
    func test_should_make_sure_that_bill_is_displayed_on_screen() {
        
        let totalPerPersonText = app.staticTexts["billAmountText"]
        let _ = totalPerPersonText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(totalPerPersonText.label, "$50.00")
    }
    
    func test_should_make_sure_that_tip_is_displayed_on_screen() {
        
        let totalPerPersonText = app.staticTexts["tipAmountText"]
        let _ = totalPerPersonText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(totalPerPersonText.label, "$10.00")
    }
}
