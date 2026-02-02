//
//  TipCalculatorTests.swift
//  TipCalculatorTests
//
//  Created by Hamed Kharazmi on 02.02.26.
//

import XCTest
@testable import Tip_Calculator

final class TipModelTests: XCTestCase {
    
    private func usdFormatter() -> NumberFormatter {
            let f = NumberFormatter()
            f.numberStyle = .currency
            f.locale = Locale(identifier: "en_US")
            f.currencyCode = "USD"
            return f
        }

    func test_tipAndTotalCalculation() {
            let model = TipModel(tipPercentage: 10, split: 2, bill: 100)

            XCTAssertEqual(model.tip, 10, accuracy: 0.000_001)
            XCTAssertEqual(model.total, 110, accuracy: 0.000_001)
        }
    
    func test_perPersonFormatting() {
            let model = TipModel(tipPercentage: 10, split: 2, bill: 100, formatter: usdFormatter())
            XCTAssertEqual(model.billPerPerson, "$50.00")
            XCTAssertEqual(model.tipPerPerson, "$5.00")
            XCTAssertEqual(model.totalPerPerson, "$55.00")
        }

}
