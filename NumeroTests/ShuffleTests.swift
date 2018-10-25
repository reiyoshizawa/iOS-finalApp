//
//  ShuffleTests.swift
//  NumeroTests
//
//  Created by yoshizawarei on 2018/10/25.
//  Copyright © 2018 Facebook. All rights reserved.
//

import XCTest

@testable import Numero

class ShuffleTests: XCTestCase {

    func testShuffledString() {
        var testString = "hello"
        var result = testString.garbled()
        
        XCTAssertNotEqual(testString, result, "hello is not garbled.")
    }
    
    func testShuffledStringSpaces() {
        var testString = "asd adsf "
        var result = testString.garbled()
        
        XCTAssertNotEqual(testString, result, "empty is not garbled.")
    }
    
    
    
}
