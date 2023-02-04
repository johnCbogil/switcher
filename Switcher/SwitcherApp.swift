//
//  SwitcherApp.swift
//  Switcher
//
//  Created by John Bogil on 2/4/23.
//

import SwiftUI

@main
struct SwitcherApp: App {
    @Environment(\.scenePhase) private var phase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: phase) { newPhase in
            switch newPhase {
            case .active: print("we switchin")
            default: break
            }
        }

    }
}
