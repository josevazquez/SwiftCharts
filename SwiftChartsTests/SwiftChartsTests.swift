//
//  SwiftChartsTests.swift
//  SwiftChartsTests
//
//  Created by Jose Vazquez on 4/8/23.
//

import XCTest
@testable import SwiftCharts

final class SwiftChartsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRomanNumerals() throws {
        XCTAssertEqual(romanNumeral(for: 9), "IX")
        XCTAssertEqual(romanNumeral(for: 24), "XXIV")
        XCTAssertEqual(romanNumeral(for: 49), "XLIX")
        XCTAssertEqual(romanNumeral(for: 63), "LXIII")
        XCTAssertEqual(romanNumeral(for: 94), "XCIV")
    }
}
