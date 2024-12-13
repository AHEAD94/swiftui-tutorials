//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 2024/08/15.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
