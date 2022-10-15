//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by  generic on 2022/9/16.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
