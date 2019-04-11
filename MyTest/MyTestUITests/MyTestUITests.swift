//
//  MyTestUITests.swift
//  MyTestUITests
//
//  Created by macbook on 2019-04-01.
//  Copyright © 2019 RT7. All rights reserved.
//

import XCTest

class MyTestUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // Test not null
        let firstTab = app.tabBars.buttons["First"]
        XCTAssertNotNil(firstTab)
    }
    
    func testText() {
        sleep(3)

        // Step 1
        let secondTap = app.tabBars.buttons["Second"]
        secondTap.tap()
        sleep(3)

        // Step 2
        let navigationButton = app.buttons["Button"]
        navigationButton.tap()
        sleep(3)

        // Step 3
        let text = app.staticTexts["This is what we need to test"]
        XCTAssertEqual(text.label, "This is what we need to test")
    }
}
