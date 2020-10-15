//
//  ContentView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State var selectedBook: Book? = nil
    @State var books = Box(Book.demoBooks)
    
    @State private var user: User = User.exampleUser
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    RecommendedRow(book: $books.value[books.value.indices.randomElement()!])
                    
                    ScrollView(.horizontal, showsIndicators:false){
                        BooksView(books: $books.value, user:user)
                    }.shadow(color: .black, radius:10, x: 20, y:20)
                }
                
                Spacer()
                    .layoutPriority(1)
            }
            .background(Color.catPurple)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Swift Books")
            .sheet(isPresented: self.$isPresented, content: {
                SettingsView(user: self.user)
            })
            .navigationBarItems(trailing:
                Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text("Settings")
                }))
            
            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
