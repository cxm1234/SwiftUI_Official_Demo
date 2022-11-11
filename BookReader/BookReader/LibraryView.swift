//
//  LibraryView.swift
//  BookReader
//
//  Created by ming on 2022/11/10.
//

import SwiftUI

struct BookView: View {
    @ObservedObject var book: Book
    
    var body: some View {
        BookEditView(book: book)
    }
}

struct BookEditView: View {
    @ObservedObject var book: Book
    
    var body: some View {
        TextField("Title", text: $book.title)
    }
}

struct LibraryView: View {
    
    @EnvironmentObject var library: Library
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(Library())
    }
}
