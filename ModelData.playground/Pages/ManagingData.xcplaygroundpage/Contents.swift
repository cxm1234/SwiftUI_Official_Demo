//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

class Book: ObservableObject {
    @Published var title = "Great Expectations"
    
    let identifier = UUID()
}

struct BookView: View {
    @ObservedObject var book: Book
    var body: some View {
        Text(book.title)
    }
}

struct LibrayView: View {
    @StateObject private var book = Book()
    
    var body: some View {
        BookView(book: book)
    }
    
}

//: [Next](@next)
