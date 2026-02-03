//
//  TipCalculatorUITests.swift
//  TipCalculatorUITests
//
//  Created by Hamed Kharazmi on 02.02.26.
//

import XCTest

final class TipCalculatorUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var mainViewPage: MainViewPage!
    
    override func setUp() {
        app = XCUIApplication()
        mainViewPage = MainViewPage(app: app)
        continueAfterFailure = false
        app.launchArguments += ["-uiTest_USLocale"]
        app.launch()
    }

    func test_should_make_sure_that_the_total_text_field_contains_default_value() {
        
        XCTAssertEqual(mainViewPage.totalTextField.value as! String, "$0.00")
    }
    
}

final class when_user_enter_total_amount: XCTestCase {
    
    private var app: XCUIApplication!
    private var mainViewPage: MainViewPage!
    
    override func setUp() {
        app = XCUIApplication()
        mainViewPage = MainViewPage(app: app)
        continueAfterFailure = false
        app.launchArguments += ["-uiTest_USLocale"]
        app.launch()
        
        let totalTextField = mainViewPage.totalTextField
        totalTextField.tap()
        let current = totalTextField.value as? String ?? ""
        totalTextField.typeText(String(repeating: XCUIKeyboardKey.delete.rawValue, count: current.count))
        totalTextField.typeText("$100.00")
        
        app.tap()
        sleep(1)
        
        let addSplitText = mainViewPage.addSplitButton
        addSplitText.tap()
    }
    
    func test_should_make_sure_that_total_per_person_is_displayed_on_screen() {
        
        let totalPerPersonText = mainViewPage.totalPerPersonAmountText
        let _ = totalPerPersonText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(totalPerPersonText.label, "$60.00")
    }
    
    func test_should_make_sure_that_bill_is_displayed_on_screen() {
        
        let billAmountText = mainViewPage.billAmountText
        let _ = billAmountText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(billAmountText.label, "$50.00")
    }
    
    func test_should_make_sure_that_tip_is_displayed_on_screen() {
        
        let tipAmountText = mainViewPage.tipAmountText
        let _ = tipAmountText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(tipAmountText.label, "$10.00")
    }
}
