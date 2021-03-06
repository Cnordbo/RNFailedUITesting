//
//  RNFailsToUITestUITests.swift
//  RNFailsToUITestUITests
//
//  Created by Christer Nordbo on 14.12.2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

import XCTest

class RNFailsToUITestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
      XCUIApplication().otherElements["BTN2"].waitForExistence(timeout: 30)
      snapshot("01Launch")
      XCUIApplication().otherElements["BTN2"].tap()
      snapshot("02BTN2State")
      sleep(1)
      XCUIApplication().otherElements["BTN1"].tap()
      snapshot("03BTN1State")
      sleep(1)
      XCUIApplication().otherElements["BTN2"].tap()
      sleep(1)
      XCUIApplication().otherElements["BTN1"].tap()
      sleep(1)
      
    }

}
