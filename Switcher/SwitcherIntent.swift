//
//  SwitcherIntent.swift
//  Switcher
//
//  Created by John Bogil on 2/4/23.
//

import Foundation
import AppIntents

struct SwitcherIntent: AppIntent {
    static var title: LocalizedStringResource = "Switcher"
    
    func perform() async throws -> some IntentResult {
        return .result(value: "hello world")
    }
}
