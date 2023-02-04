//
//  ContentView.swift
//  Switcher
//
//  Created by John Bogil on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) private var phase
    @State var openCount = 0
    private let defaults = UserDefaults.standard
    init() {
        openCount = defaults.integer(forKey: "openCount")
    }

    var body: some View {
        VStack {
            Image(systemName: "arrow.uturn.up")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Switcher App")
            Text("Total Open Count = \(openCount)")
        }
        .padding()
        .onChange(of: phase) { newPhase in
            switch newPhase {
            case .active:
                openCount += 1
                defaults.set(openCount, forKey: "openCount")
            default:
                break
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
