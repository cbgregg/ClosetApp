//
//  ClosetAppUITestsLaunchTests.swift
//  ClosetAppUITests
//
//  Created by Carter Gregg on 6/23/25.
//

import XCTest

final class ClosetAppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        
        // Fixed: Add proper error handling and verification
        XCTAssertNoThrow(app.launch(), "App should launch without throwing an error")
        
        // Verify the app actually launched and is in a valid state
        XCTAssertTrue(app.state == .runningForeground, "App should be running in foreground after launch")

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        // Fixed: Add error handling for screenshot capture
        let screenshot: XCUIScreenshot
        do {
            screenshot = app.screenshot()
        } catch {
            XCTFail("Failed to capture screenshot: \(error)")
            return
        }
        
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
        
        // Fixed: Properly terminate the app to clean up resources
        app.terminate()
    }
}
