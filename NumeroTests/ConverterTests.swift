//
//  ConverterTests.swift
//  NumeroTests
//
//  Created by yoshizawarei on 2018/10/25.
//  Copyright © 2018 Facebook. All rights reserved.
//

import XCTest

@testable import Numero

class ConverterTests: XCTestCase {

    let converter = Converter()
    
    func testConversionForOne() {
        // 1 -> ⅰ
        let result = converter.convert(1)
        XCTAssertEqual(result, "Ⅰ", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "ⅠⅠ", "Conversion for 2 is incorrect")
    }
    
    func testConversionForzFive() {
        let result = converter.convert(5)
        XCTAssertEqual(result, "Ⅴ", "Conversion for 5 is incorrect")
    }
    
    func testConversionForSix() {
        let result = converter.convert(6)
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }
    
    func testConversionForFour() {
        let result = converter.convert(4)
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    
    func testConversionForNine() {
        let result = converter.convert(9)
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    
    func testConversionFor3999() {
        let result = converter.convert(3999)
        XCTAssertEqual(result, "MMMCMXCIX", "Conversion for 3999 is incorrect")
    }


}
