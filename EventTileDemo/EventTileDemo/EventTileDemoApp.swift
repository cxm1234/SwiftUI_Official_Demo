//
//  EventTileDemoApp.swift
//  EventTileDemo
//
//  Created by ming on 2022/11/9.
//

import SwiftUI

@main
struct EventTileDemoApp: App {
    let event = Event(title: "Buy Daisies", date: .now, location: "Flower Shop", symbol: "gift")
    var body: some Scene {
        WindowGroup {
            EventTile(event: event)
        }
    }
}
