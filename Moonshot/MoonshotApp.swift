//
//  MoonshotApp.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

@main
struct MoonshotApp: App {
    @StateObject var jsonData = LoadJSONData()

    var body: some Scene {
        WindowGroup {
            MissionsView()
                .environmentObject(jsonData)
        }
    }
}
