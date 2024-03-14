//
//  kalkApp.swift
//  kalk
//
//  Created 3/13/24
//

import SwiftUI

@main
struct kalkApp: App {
    var body: some Scene {
        MenuBarExtra("", systemImage: "angle")  {
            Button("Calculator") {
                guard let calcUrl = NSWorkspace.shared.urlForApplication(withBundleIdentifier: "com.apple.Calculator") else { return }

                let calcOpenConfig = NSWorkspace.OpenConfiguration();
                calcOpenConfig.createsNewApplicationInstance = true;
                
                NSWorkspace.shared.openApplication(at: calcUrl, configuration: calcOpenConfig)
            }
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
