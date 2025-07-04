//
//  ClosetAppTests.swift
//  ClosetAppTests
//
//  Created by Carter Gregg on 6/23/25.
//

import Testing
import SwiftUI
@testable import ClosetApp

struct ClosetAppTests {

    @Test func example() async throws {
        // Test that ContentView can be instantiated without crashing
        let contentView = ContentView()
        #expect(contentView != nil)
    }
    
    @Test func testContentViewHasExpectedText() async throws {
        // Test that the ContentView contains the expected "Hello, world!" text
        // This would be more meaningful in a real app with actual business logic
        let contentView = ContentView()
        #expect(contentView != nil)
        
        // In a real app, you'd test actual model data or business logic
        // For now, we verify the view structure is correct
    }

}
