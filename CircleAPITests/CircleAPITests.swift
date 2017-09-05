//
//  CircleAPICallTests.swift
//  TVBuildMonitorTests
//
//  Created by Joe Sturzenegger on 8/25/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import XCTest
@testable import TVBuildMonitor

class CircleAPITests: XCTestCase {
  
  func testGetAPIBuildsFromCircleCI() {
    let data = CircleCIController.makeCallForData(String: "API")
    print(data.count)
    XCTAssertTrue(!data.isEmpty)
    XCTAssertTrue(data.count == 10)
  }
  
  func testGetUIBuildsFromCircleCI() {
    let data = CircleCIController.makeCallForData(String: "UI")
    print(data)
    assert(!data.isEmpty)
    XCTAssertTrue(data.count == 10)
  }
  
  
}

