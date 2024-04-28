//
//  MyAppApp.swift
//  MyApp
//
//  Created by First Last on 4/28/24.
//

import SwiftUI

@main
struct MyAppApp: App {
    var body: some Scene {
        WindowGroup {
            if isTesting {
                Text("Running tests...")
            } else {
                ContentView()
            }
        }
    }
}

// MARK: - Private

extension MyAppApp {
    private var isTesting: Bool {
        #if DEBUG
        return NSClassFromString("XCTestCase") != nil
        #else
        return false
        #endif
    }
}
