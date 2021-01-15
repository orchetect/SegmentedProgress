//
//  File.swift
//  SegmentedProgress
//

import XCTest
@testable import SegmentedProgress

class UtilitiesTests: XCTestCase {
	
	override func setUp() { super.setUp() }
	override func tearDown() { super.tearDown() }
	
	func testRoundedPercentageString() {
		
		// 0.0000000019
		
		XCTAssertEqual(roundedPercentageString(0.0000000019, toPlaces: 0),
					   "0%")
		
		XCTAssertEqual(roundedPercentageString(0.0000000019, toPlaces: 2),
					   "0.00%")
		
		// 0.019
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: -1),
					   "0%")
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: 0),
					   "0%")
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: 1),
					   "0.0%")
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: 2),
					   "0.02%")
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: 3),
					   "0.019%")
		
		XCTAssertEqual(roundedPercentageString(0.019, toPlaces: 4),
					   "0.0190%")
		
		// 0
		
		XCTAssertEqual(roundedPercentageString(0, toPlaces: -1),
					   "0%")
		
		XCTAssertEqual(roundedPercentageString(0, toPlaces: 0),
					   "0%")
		
		XCTAssertEqual(roundedPercentageString(0, toPlaces: 1),
					   "0.0%")
		
		XCTAssertEqual(roundedPercentageString(0, toPlaces: 2),
					   "0.00%")
		
		XCTAssertEqual(roundedPercentageString(0, toPlaces: 3),
					   "0.000%")
		
		// 1
		
		XCTAssertEqual(roundedPercentageString(1, toPlaces: -1),
					   "1%")
		
		XCTAssertEqual(roundedPercentageString(1, toPlaces: 0),
					   "1%")
		
		XCTAssertEqual(roundedPercentageString(1, toPlaces: 1),
					   "1.0%")
		
		XCTAssertEqual(roundedPercentageString(1, toPlaces: 2),
					   "1.00%")
		
		XCTAssertEqual(roundedPercentageString(1, toPlaces: 3),
					   "1.000%")
		
		// 542.768
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: -1),
					   "543%")
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: 0),
					   "543%")
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: 1),
					   "542.8%")
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: 2),
					   "542.77%")
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: 3),
					   "542.768%")
		
		XCTAssertEqual(roundedPercentageString(542.768, toPlaces: 4),
					   "542.7680%")
		
	}
	
}
