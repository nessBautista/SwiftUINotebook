//
//  ContentView07.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct ContentView07: View {
    @State var books:[Book] = Book.demoBooks
    var body: some View {
        TabView {
            BookListView(books: $books)
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text(verbatim: "Books")
                }
                .tag(0)
            KittySnackPicker()
                .tabItem {
                    Image(systemName: "wrench.fill")
                    Text(verbatim: "Snack Picker")
                }
                .tag(1)
        }
    }
}

struct ContentView07_Previews: PreviewProvider {
    static var previews: some View {
        ContentView07(books: Book.demoBooks)
    }
}
