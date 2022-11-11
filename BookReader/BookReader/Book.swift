//
//  Book.swift
//  BookReader
//
//  Created by ming on 2022/11/10.
//

import SwiftUI
class Book: ObservableObject {
    @Published var title = "Great Expectations"
    
    let identifier = UUID()
}


