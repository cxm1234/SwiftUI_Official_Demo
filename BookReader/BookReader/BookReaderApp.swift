//
//  BookReaderApp.swift
//  BookReader
//
//  Created by ming on 2022/11/10.
//

import SwiftUI

@main
struct BookReaderApp: App {
    @StateObject private var library = Library()
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environmentObject(library)
        }
    }
}
